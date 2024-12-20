+++
toc = true
title = "Flow Engineering"
author = "Lorenzo Drumond"
date = "2024-02-20T18:29:12"
tags = ["engineering",  "programming",  "code",  "artificial_intelligence",  "procedure",  "codium",  "computer_science",  "tests",  "learning",  "few_shot",  "coding",  "LLM",  "AI",  "one_shot",  "flow",  "ML"]
+++


Flow engineering is a procedure that guides a model's (LLM) problem-solving process by splitting it into well-defined steps.

Implementing a careful pipeline that generates additional data to guide how code is generated and improve the testing process can be more effective than trying to train a large language model from scratch.

E.g. AlphaCodium (code generating bot)

Steps:

1. A programming question is fed to an underlying LMM, and it's asked to summarise the problem.
2. AlphaCodium defines things like inputs and outputs.
3. The model generates code that aligns with the specifications just described.
4. AlphaCodium generates many test cases from the specification, and runs through possible solutions to check if the code is working as expected
5. The model keeps generating different solutions until they pass all the tests, or it fails

This is split into a _pre-processing_ phase, where the system analyzes the problem in natural language, and a _code-iteration_ stage, where it runs possible solutions against public and AI-generated tests

## References
- https://go.theregister.com/feed/www.theregister.com/2024/02/19/codium_ai_interview/
