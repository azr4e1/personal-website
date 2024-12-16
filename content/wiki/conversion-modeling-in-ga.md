+++
title = "Conversion modeling in GA"
author = "Lorenzo Drumond"
date = "2024-01-22T12:50:28"
tags = ["sales",  "workspace",  "google",  "property",  "tag",  "data_stream",  "data",  "website",  "aggregated",  "analytics",  "account",  "marketing",  "filters",  "privacy",  "reports",  "PII",  "advertising",  "mobile",  "real_time",  "ga4"]
+++


# Conversion modeling in GA
As the industry evolves to adapt to a world that prioritizes and upholds the privacy of users, the technologies used to measure and gather insights across the customer journey need to adapt alongside it. With observed data less available because of privacy regulations and restrictions, sophisticated machine learning models can help preserve measurement continuity while respecting user privacy and consent choices.

Google uses modeling to predict online conversions that can’t be observed directly. Modeling allows for accurate conversion attribution without identifying users (for example, due to user privacy, technical limitations, or when users move between devices). Including modeled conversions lets Google offer more accurate reporting, optimize advertising campaigns, and improve automated bidding.

Google’s models look for trends between conversions that were directly observed and those that weren’t. For example, if conversions attributed on one browser are similar to unattributed conversions from another browser, the machine learning model will predict overall attribution. Based on this prediction, conversions are aggregated to include both modeled and observed conversions.

Modeled conversions are only included when there's high confidence of quality. If there isn’t enough traffic to inform the model, modeled conversions aren't reported. (Or, in the case of Google Analytics, they're attributed to the direct channel).

Google doesn’t allow fingerprint IDs or other attempts to identify individual users. Instead, Google aggregates data (such as historical conversion rates, device type, time of day, geo, etc.) to predict the likelihood of conversions.

Conversion modelling could happen:
- When the ad interaction and conversion happen on different devices, conversions may be modeled.
- Browsers that don't allow conversions to be measured with third-party cookies have conversions modeled based on a website’s traffic. Browsers that limit the time window for first-party cookies have conversions (beyond the window) modeled.
- Some countries require consent to use cookies for advertising activities. When advertisers use consent mode, conversions are modeled for unconsented users.
- App platforms can require that developers obtain permission to use certain information from other apps and websites.


# References

Next -> [attribution-modeling-in-ga](/wiki/attribution-modeling-in-ga/)
