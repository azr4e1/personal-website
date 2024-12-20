+++
toc = true
title = "Attribution modeling in GA"
author = "Lorenzo Drumond"
date = "2024-01-22T12:55:34"
+++


Attribution is the act of assigning credit for conversions to different ads, clicks, and factors along a user's path to completing a conversion. An attribution model can be a rule, a set of rules, or a data-driven algorithm that determines how credit for conversions is assigned to touchpoints on conversion paths.

Cross-channel models:
- First click: Gives all credit for the conversion to the first channel that a customer clicked before converting.
- Linear: Distributes the credit for the conversion equally across all the channels a customer clicked before converting.
- Time decay: Gives more credit to the touchpoints that happened closer in time to the conversion. Credit is distributed using a 7-day half-life. In other words, a click 8 days before a conversion gets half as much credit as a click 1 day before a conversion.
- Data-driven attribution: Distributes credit for the conversion based on observed data for each conversion type. It's different from the other models because your account's data is used to calculate the actual contribution of each click interaction.


Users with the Editor role on the property can select an attribution model and lookback window at the property level to apply to a number of reports. To access this setting, go to Admin and select Attribution Settings.


## References

Next -> [audiences-in-ga](/wiki/audiences-in-ga/)
