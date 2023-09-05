---
created: 2023-06-20T12:56:19 (UTC +08:00)
tags: []
source: https://paperswithcode.com/paper/instruct2act-mapping-multi-modality
author: 18 May 2023
---

# Instruct2Act: Mapping Multi-modality Instructions to Robotic Actions with Large Language Model | Papers With Code

> ## Excerpt
> Implemented in one code library.

---
Foundation models have made significant strides in various applications, including text-to-image generation, panoptic segmentation, and natural language processing. This paper presents Instruct2Act, a framework that utilizes Large Language Models to map multi-modal instructions to sequential actions for robotic manipulation tasks. Specifically, Instruct2Act employs the LLM model to generate Python programs that constitute a comprehensive perception, planning, and action loop for robotic tasks. In the perception section, pre-defined APIs are used to access multiple foundation models where the Segment Anything Model (SAM) accurately locates candidate objects, and CLIP classifies them. In this way, the framework leverages the expertise of foundation models and robotic abilities to convert complex high-level instructions into precise policy codes. Our approach is adjustable and flexible in accommodating various instruction modalities and input types and catering to specific task demands. We validated the practicality and efficiency of our approach by assessing it on robotic tasks in different scenarios within tabletop manipulation domains. Furthermore, our zero-shot method outperformed many state-of-the-art learning-based policies in several tasks. The code for our proposed approach is available at https://github.com/OpenGVLab/Instruct2Act, serving as a robust benchmark for high-level robotic instruction tasks with assorted modality inputs.

[PDF](https://arxiv.org/pdf/2305.11176v3.pdf) [Abstract](https://arxiv.org/abs/2305.11176v3)

## Code

___

![](https://production-assets.paperswithcode.com/perf/images/frameworks/pytorch-2fbf2cb9.png)

## Tasks

___

## Datasets

___

  [Add Datasets](https://paperswithcode.com/paper/instruct2act-mapping-multi-modality#loginModal) introduced or used in this paper

## Results from the Paper

___

  Submit [results from this paper](https://paperswithcode.com/paper/instruct2act-mapping-multi-modality/review/) to get state-of-the-art GitHub badges and help the community compare results to other papers.

## Methods

___
