+++
title = "Terminal control flow"
author = "Lorenzo Drumond"
date = "2024-01-03T14:56:55"
tags = ["control",  "terminal",  "ctrl_q",  "flow",  "frozen",  "unfreeze",  "ctrl_s",  "stuck"]
+++


Pressing ctrl_s on the terminal will cause it to look like it's frozen. To unlock it, press ctrl_q.

  ctrl_s sends a `XOFF` signal. This is part of Software flow control. XOFF notifies the process or device sending data that the input buffer is full and it shouldn't send any more data.

# References
- https://superuser.com/questions/1390977/pressing-ctrl-s-by-mistake-while-using-vim
