+++
title = "Nondeterministic Turing Machine"
author = "Lorenzo Drumond"
date = "2024-08-17T00:36:10"
tags = ["turing",  "machine",  "nondeterministic",  "programming"]
+++



a nondeterministic Turing machine (NTM) is a theoretical model of computation whose governing rules specify more than one possible action when in some given situations. That is, an NTM's next state is not completely determined by its action and the current symbol it sees, unlike a deterministic Turing machine [deterministic-turing-machine](/wiki/deterministic-turing-machine/).

# Turing Machine

In essence, a Turing machine is imagined to be a simple computer that reads and writes symbols one at a time on an endless tape by strictly following a set of rules. It determines what action it should perform next according to its internal state and what symbol it currently sees. An example of one of a Turing Machine's rules might thus be: "If you are in state 2 and you see an 'A', then change it to 'B', move left, and switch to state 3."

# Deterministic

In a deterministic Turing machine (DTM), the set of rules prescribes at most one action to be performed for any given situation.

A deterministic Turing machine has a transition function that, for a given state and symbol under the tape head, specifies three things:

-  the symbol to be written to the tape (it may be the same as the symbol currently in that position, or not even write at all, resulting in no practical change),
-  the direction (left, right or neither) in which the head should move, and
-  the subsequent state of the finite control.

For example, an X on the tape in state 3 might make the DTM write a Y on the tape, move the head one position to the right, and switch to state 5.

# Nondeterministic

In contrast to a deterministic Turing machine, in a nondeterministic Turing
machine (NTM) the set of rules may prescribe more than one action to be
performed for any given situation. For example, an X on the tape in state 3
might allow the NTM to:

- Write a Y, move right, and switch to state 5

or

- Write an X, move left, and stay in state 3.

How does the NTM "know" which of these actions it should take? There are two
ways of looking at it. One is to say that the machine is the "luckiest possible
guesser"; it always picks a transition that eventually leads to an accepting
state, if there is such a transition. The other is to imagine that the machine
"branches" into many copies, each of which follows one of the possible
transitions. Whereas a DTM has a single "computation path" that it follows, an
NTM has a "computation tree". If at least one branch of the tree halts with an
"accept" condition, the NTM accepts the input.

# References

- https://en.wikipedia.org/wiki/Nondeterministic_Turing_machine

Next -> [deterministic-turing-machine](/wiki/deterministic-turing-machine/)
