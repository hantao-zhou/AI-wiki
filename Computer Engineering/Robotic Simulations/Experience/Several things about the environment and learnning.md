
## Summaries

1. the actual observation space of an environment can be easily altered from external wrappers
2. the observation mode is different due to the definitions within the env's original codes
3. the usage of the stable_baselines' subprocvec is a bit weird

## Codes

```py
import gymnasium as gym
from stable_baselines3 import PPO
from stable_baselines3.common.env_util import make_vec_env
from stable_baselines3.common.vec_env import DummyVecEnv
import numpy as np
from collections.abc import Mapping
DEBUG = 0
# from stable_baselines3.common.envs import FlattenObservation

# Custom environment wrapper definitions (as provided in your code)
class ContinuousTaskWrapper(gym.Wrapper):
    def __init__(self, env) -> None:
        super().__init__(env)

    def reset(self, *args, **kwargs):
        return super().reset(*args, **kwargs)

    def step(self, action):
        ob, rew, terminated, truncated, info = super().step(action)
        return ob, rew, False, truncated, info

class SuccessInfoWrapper(gym.Wrapper):
    def step(self, action):
        ob, rew, terminated, truncated, info = super().step(action)
        info["is_success"] = info["success"]
        return ob, rew, terminated, truncated, info
class FlattenObservationWrapper(gym.ObservationWrapper):
    def __init__(self, env):
        super().__init__(env)
        self.observation_space = self.flatten_space(env.observation_space)

    def flatten_space(self, space):
        """Flatten a gym space into a single Box space."""
        if isinstance(space, gym.spaces.Box):
            return gym.spaces.Box(low=space.low.flatten(), high=space.high.flatten(), dtype=space.dtype)
        elif isinstance(space, gym.spaces.Dict) or isinstance(space, Mapping):
            low, high = [], []
            for key, subspace in space.spaces.items():
                if isinstance(subspace, gym.spaces.Box):
                    low.extend(subspace.low.flatten())
                    high.extend(subspace.high.flatten())
                elif isinstance(subspace, gym.spaces.Dict) or isinstance(subspace, Mapping):
                    # Recursively flatten nested dictionaries
                    flattened_subspace = self.flatten_space(subspace)
                    low.extend(flattened_subspace.low)
                    high.extend(flattened_subspace.high)
                else:
                    raise NotImplementedError(f"Unsupported subspace type: {type(subspace)}")
            return gym.spaces.Box(low=np.array(low), high=np.array(high), dtype=np.float32)
        else:
            raise NotImplementedError(f"Unsupported space: {type(space)}")

    def observation(self, observation):
        """Flatten the observation."""
        if isinstance(observation, np.ndarray):
            return observation.flatten()
        elif isinstance(observation, Mapping):
            # Flatten nested dictionaries
            flat_obs = []
            for obs in observation.values():
                if isinstance(obs, np.ndarray):
                    flat_obs.extend(obs.flatten())
                elif isinstance(obs, Mapping):
                    flat_obs.extend(self.observation(obs).flatten())
                else:
                    raise NotImplementedError(f"Unsupported observation structure: {type(obs)}")
            return np.array(flat_obs)
        else:
            raise NotImplementedError(f"Unsupported observation structure: {type(observation)}")
class AgentExtraFlattenWrapper(gym.ObservationWrapper):
    def __init__(self, env):
        super().__init__(env)
        # Calculate the flattened size for both 'agent' and 'extra' parts
        agent_space = self.flatten_space(env.observation_space['agent'])
        extra_space = self.flatten_space(env.observation_space['extra'])
        low = np.concatenate([agent_space.low, extra_space.low])
        high = np.concatenate([agent_space.high, extra_space.high])
        self.observation_space = gym.spaces.Box(low=low, high=high, dtype=np.float32)

    def flatten_space(self, space):
        """Flatten a gym space into a single Box space."""
        if isinstance(space, gym.spaces.Box):
            return gym.spaces.Box(low=space.low.flatten(), high=space.high.flatten(), dtype=space.dtype)
        elif isinstance(space, gym.spaces.Dict) or isinstance(space, Mapping):
            low, high = [], []
            for key, subspace in space.spaces.items():
                if isinstance(subspace, gym.spaces.Box):
                    low.extend(subspace.low.flatten())
                    high.extend(subspace.high.flatten())
                else:
                    raise NotImplementedError(f"Unsupported subspace type: {type(subspace)}")
            return gym.spaces.Box(low=np.array(low), high=np.array(high), dtype=np.float32)
        else:
            raise NotImplementedError(f"Unsupported space: {type(space)}")

    def observation(self, observation):
        """Extract and flatten 'agent' and 'extra' parts of the observation."""
        flat_agent_obs = self.flatten_individual_observation(observation['agent'])
        flat_extra_obs = self.flatten_individual_observation(observation['extra'])

        return np.concatenate([flat_agent_obs, flat_extra_obs])

    def flatten_individual_observation(self, obs_dict):
        """Flatten an individual observation dictionary."""
        return np.concatenate([value.flatten() for value in obs_dict.values()])

# Environment setup
env_id = "Pour-v0"  # Example environment ID from your code
max_episode_steps = 50

# Define the environment creation function
def make_env():
    import mani_skill2.envs  # Import custom environments

    env = gym.make(env_id, obs_mode="image", reward_mode="normalized_dense", control_mode="pd_ee_delta_pose", render_mode="human", max_episode_steps=max_episode_steps)
    if DEBUG:
        from IPython import embed; embed()
    env = ContinuousTaskWrapper(env)
    env = SuccessInfoWrapper(env)
    # env = FlattenObservationWrapper(env)
    env = AgentExtraFlattenWrapper(env)
    if DEBUG:
        from IPython import embed; embed()
    return env

env = make_env()

# Model setup and training
model = PPO("MlpPolicy", env, verbose=1)
# model = PPO("CnnPolicy", env, verbose=1)
model.learn(total_timesteps=500_000)

# Model evaluation (simplified)
obs = env.reset()
for _ in range(1000):
    action, _states = model.predict(obs, deterministic=True)
    obs, rewards, dones, info = env.step(action)
    if dones:
        obs = env.reset()

env.close()
```
