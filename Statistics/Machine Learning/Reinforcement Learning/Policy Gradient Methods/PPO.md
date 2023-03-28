# intro

**Proximal Policy Optimization**, or **PPO**, is a policy gradient method for reinforcement learning. The motivation was to have an algorithm with the data efficiency and reliable performance of [TRPO](https://paperswithcode.com/method/trpo), while using only first-order optimization.

Let rt(θ) denote the probability ratio rt(θ)\=πθ(at∣st)πθold(at∣st), so r(θold)\=1. TRPO maximizes a “surrogate” objective:

LCPI(θ)\=E^t\[πθ(at∣st)πθold(at∣st))A^t\]\=E^t\[rt(θ)A^t\]

Where CPI refers to a conservative policy iteration. Without a constraint, maximization of LCPI would lead to an excessively large policy update; hence, we PPO modifies the objective, to penalize changes to the policy that move rt(θ) away from 1:

JCLIP(θ)\=E^t\[min(rt(θ)A^t,clip(rt(θ),1−ϵ,1+ϵ)A^t)\]

where ϵ is a hyperparameter, say, ϵ\=0.2. The motivation for this objective is as follows. The first term inside the min is LCPI. The second term, clip(rt(θ),1−ϵ,1+ϵ)A^t modifies the surrogate objective by clipping the probability ratio, which removes the incentive for moving rt outside of the interval \[1−ϵ,1+ϵ\]. Finally, we take the minimum of the clipped and unclipped objective, so the final objective is a lower bound (i.e., a pessimistic bound) on the unclipped objective. With this scheme, we only ignore the change in probability ratio when it would make the objective improve, and we include it when it makes the objective worse.

One detail to note is that when we apply PPO for a network where we have shared parameters for actor and critic functions, we typically add to the objective function an error term on value estimation and an entropy term to encourage exploration.

Source: [Proximal Policy Optimization Algorithms](http://arxiv.org/abs/1707.06347v2)

[](https://paperswithcode.com/method/ppo#)[![](https://production-media.paperswithcode.com/methods/Screen_Shot_2020-06-03_at_9.57.17_PM.png)](https://production-media.paperswithcode.com/methods/Screen_Shot_2020-06-03_at_9.57.17_PM.png)

#### Papers

___

#### Tasks

___

Created with Highcharts 9.3.0Reinforcement Learning (RL)Reinforcement Learning (RL)Continuous ControlContinuous ControlOpenAI GymOpenAI GymMulti-agentReinforcementLearningMulti-agentReinforcementLearningManagementManagementAtari GamesAtari GamesDecision MakingDecision MakingObject DetectionObject DetectionStarcraftStarcraftOtherOther

#### Usage Over Time

___

Created with Highcharts 9.3.0Proportion of Papers (Quarterly)PPODDPGREINFORCETD3A2CTRPO201720182019202020212022202300.00020.00040.0006

This feature is experimental; we are continuously improving our matching algorithm.

#### Categories

___

-    [![](https://production-media.paperswithcode.com/tasks/default.gif) Policy Gradient Methods](https://paperswithcode.com/methods/category/policy-gradient-methods)


