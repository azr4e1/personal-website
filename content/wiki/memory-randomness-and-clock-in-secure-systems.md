+++
title = "Memory, randomness and clock in secure systems"
author = "Lorenzo Drumond"
date = "2024-07-03T12:19:49"
tags = ["integrity",  "randomness",  "confidentiality",  "errors",  "authorisation",  "cryptography",  "auditing",  "authenticity",  "basics",  "memory",  "time",  "security",  "model",  "authentication"]
+++



# Memory

Sensitive data will have to be loaded into memory.

Anything that is in memory can be leaked to an attacker with access to that memory

Process isolation is one countermeasure: preventing an attacker from accessing a process’s memory space will help mitigate successful attacks against the system. However, an attacker who can access the machine, whether via a physical console or via a remote SSH session, now potentially has access to the memory space of any process running on that machine. This is where other security mechanisms are crucial for a secure system: they prevent an attacker from reaching that memory space.

Any memory swapped to disk is now accessible via the file system. If a peripheral has direct memory access (DMA), and many of them do, that peripheral has access to all the memory in the machine, including the memory space of every process.

Memory is a difficult attack surface to secure. It’s helpful to ask these following questions for each secret:

- Does it live on disk for long-term storage? If so, who has access to it? What authorisation mechanisms ensure that only authenticated parties have access?
- When it’s loaded in memory, who owns it? How long does it live in memory? What happens when it’s no longer used?
- If the secrets lived on a virtual machine, how much trust can be placed in parties that have access to the host machine? Can other tenants (i.e. users of other virtual machines) find a way to access secrets? What happens when the machine is decomissioned?

# Randomness

Cryptographic systems rely on sources of sufficiently random data. We want the data from these sources to be indistinguishable from ideally random data (a uniform distribution over the range of possible values). There has been historically a lot of confusion between the options available on Unix platforms, but the right answer  is to use `/dev/urandom`. Fortunately, `crypto/rand.Reader` in the Go standard library uses this on Unix systems.

Ensuring the platform has sufficient randomness is another problem, which mainly comes down to ensuring that the kernel’s PRNG is properly seeded before being used for cryptographic purposes. This is a problem particularly with virtual machines, which may be duplicated elsewhere or start from a known or common seed. In this case, it might be useful to include additional sources of entropy in the kernel’s PRNG, such as a hardware RNG that writes to the kernel’s PRNG. The host machine may also have access to the PRNG via disk or memory allowing its observation by the host, which must be considered as well.

# Time

Some protocols rely on clocks being synced between peers. This has historically been a challenging problem.

One of the major challenges in cryptographic systems is checking whether a key has expired; if the time is off, the system may incorrectly refuse to use a key that hasn’t expired yet or use a key that has expired.

Using the clock itself as a monotonic counter can also lead to issues; a clock that has drifted forward may be set back to the correct time (i.e. via NTP), which results in the counter stepping backwards.

It helps to treat clock values with suspicion.

# References

Next -> [side-channel-attacks](/wiki/side-channel-attacks/)
