+++
title = "Audiences in GA"
author = "Lorenzo Drumond"
date = "2024-01-22T13:03:43"
tags = ["time",  "sales",  "google",  "property",  "sequence",  "customers",  "tag",  "data_stream",  "data",  "models",  "conditions",  "website",  "aggregated",  "segment",  "dynamic",  "analytics",  "audience",  "account",  "marketing",  "privacy",  "reports",  "valuable",  "advertising",  "static",  "mobile",  "scope",  "ga4"]
+++


Audiences let you segment users in ways that are important to your business. Segment by dimensions, metrics, and events to include nearly any subset of users.

Use audiences in a number of ways:
- Reporting in Analytics: Filter analytics reports by audiences you create
- If using Google Ads, export audiences to use for ad targeting and bidding.
- Trigger events when users match the definition of an audience and become members. Mark those events as conversions and use them for things like bidding in Google Ads.

Create an audience by setting conditions based on the dimension, metric, and event data you collect from a property. After you create an audience, it accumulates users who meet the conditions from that point onward.

It can take 24 to 48 hours for the audience to accumulate users, after it's created.

You can create audiences based on:
- Scope: set conditions to get the scope of when conditions must be met: across all sessions, in a single sessions, or in a single eventt
- Static vs dynamic: Static evaluation includes users if the condition was ever true for them. Dynamic evaluation includes users when they meet the condition and excludes them when they don't.
- Time: Specify that a metric condition can be true during any point in the lifetime of a user or that it must be true during a specific number of days (For example, less than five during any seven-day period).
- Sequences: specify the order in which conditions must be met: indirectly followed by (anytime after the previous step), directly followed by (immediately after the previous step), or within a specific time frame. Sequences also let you specify scope for the entire sequence.


GA has the following predefined audiences: All users, Purchasers.

You can create new audiences from

Configure -> Audiences.

You can start from scratch or use the suggested audiences.

_Predictive audiences_: Google Analytics uses machine learning to predict the future behavior of users based on their past behavior. That's called predictive metrics. When using predictive metrics, a predictive audience is an audience with at least one condition based on a predictive metric. For example, you could build an audience for "likely seven-day purchasers" that includes users who are likely to make a purchase within the next seven days.


You can set audience triggers: these are trigger events based on criteria that exist withing the audience builder tool. E.g.:  if the condition for your audience "high-value customers" defines members as users whose lifetime value is greater than 100, each time a user meets that condition and becomes an audience member, you can trigger an event like new_high_value_customer.

# References

Next -> [link-google-ads-and-ga](/wiki/link-google-ads-and-ga/)
