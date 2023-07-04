---
created: 2023-06-19T18:26:30 (UTC +08:00)
tags: []
source: https://paperswithcode.com/paper/vima-general-robot-manipulation-with
author: 6 Oct 2022
---

# VIMA: General Robot Manipulation with Multimodal Prompts | Papers With Code

> ## Excerpt
> Implemented in 2 code libraries.

---
Prompt-based learning has emerged as a successful paradigm in natural language processing, where a single general-purpose language model can be instructed to perform any task specified by input prompts. Yet task specification in robotics comes in various forms, such as imitating one-shot demonstrations, following language instructions, and reaching visual goals. They are often considered different tasks and tackled by specialized models. We show that a wide spectrum of robot manipulation tasks can be expressed with multimodal prompts, interleaving textual and visual tokens. Accordingly, we develop a new simulation benchmark that consists of thousands of procedurally-generated tabletop tasks with multimodal prompts, 600K+ expert trajectories for imitation learning, and a four-level evaluation protocol for systematic generalization. We design a transformer-based robot agent, VIMA, that processes these prompts and outputs motor actions autoregressively. VIMA features a recipe that achieves strong model scalability and data efficiency. It outperforms alternative designs in the hardest zero-shot generalization setting by up to 2.9× task success rate given the same training data. With 10× less training data, VIMA still performs 2.7× better than the best competing variant. Code and video demos are available at https://vimalabs.github.io/