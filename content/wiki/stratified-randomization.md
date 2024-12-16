+++
title = "Stratified Randomization"
author = "Lorenzo Drumond"
date = "2024-03-14T14:57:16"
tags = ["samples",  "strata",  "statistics",  "groups",  "randomization",  "stratified",  "analysis",  "population",  "experiment",  "test"]
+++


# Stratified Randomization
In statistics, stratified randomization is a method of sampling which first stratifies the whole study population into subgroups with same attributes or characteristics, known as strata, then followed by simple random sampling (SRS - simple random sample) from the stratified groups, where each element within the same subgroup are selected unbiasedly during any stage of the sampling process, randomly and entirely by chance. Stratified randomization is considered a subdivision of stratified sampling, and should be adopted when shared attributes exist partially and vary widely between subgroups of the investigated population, so that they require special considerations or clear distinctions during sampling. Stratified Random Sampling is also known as _quota random sampling_.

┌───────────────────────────────────────────────────────────┐
│                                                           │
│   ┌──────────────┐                      ┌─────────────┐   │
│   │ Group Two    │                      │ Group Three │   │
│   │              │                      │             │   │
│   │        ┌─────┤                      ├────┐        │   │
│   │        │  SRS│                      │SRS │        │   │
│   └────────┴─┬───┘                      └──┬─┴────────┘   │
│              │         ┌───────────┐       │              │
│              └────────►│           │◄──────┘              │
│                        │   Sample  │                      │
│                        │           │                      │
│   ┌──────────────┐     └───────────┘    ┌─────────────┐   │
│   │ Group One    │      ▲         ▲     │ Group Four  │   │
│   │              │      │         │     │             │   │
│   │        ┌─────┤      │         │     ├────┐        │   │
│   │        │  SRS├──────┘         └─────┤SRS │        │   │
│   └────────┴─────┘                      └────┴────────┘   │
│                                                           │
└───────────────────────────────────────────────────────────┘

## Steps

1. Define target population
2. define stratification variables and decide the number of strata. Criteria for defining variables for stratification include age, socioeconomic status, nationality, race, education level etc..
3. Use a sampling frame to evaluate all the elements in the target population
4. List all the elements and consider the sampling result. Each stratum should be mutually exclusive and add up to cover all members of the population, whilst each member of the population should fall into unique stratum
5. Make decisions over the random sampling criteria
6. Assign a random and unique number to all the elements followed by sorting these elements according to their number assigned.
7. Review the size of each stratum and numerical distribution of all elements in every strata. Determine the type of sampling, either proportional or disproportional stratified sampling.
8. Carry out the selected random sampling as defined in step 5. At minimum, one element must be chosen from each stratum so that the final sample includes representatives from every stratum. If two or more elements from each stratum are selected, error margins of the collected data can be calculated.

# References
- https://en.wikipedia.org/wiki/Stratified_randomization
