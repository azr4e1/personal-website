+++
toc = true
hideReply = true
title = "GA Account structure"
author = "Lorenzo Drumond"
date = "2023-12-06T12:25:54"
tags = ["google",  "mobile",  "property",  "analytics",  "sales",  "data",  "marketing",  "account",  "structure",  "website",  "firebase",  "advertising",  "ga4"]
+++


Let's go over a GA account structure:
- An _account_ is a collection of properties whose data is owned by a single business entity.
- A _property_ represents a grouping of user data, like from a website or an app. It's also the level where Google Analytics processes data and where you can create links with other products, like Google Ads.
- Underneath each property is a _data stream_ that represents the flow of data from a website or an app to the property, and the level where you can control things like what data gets collected. There are web data streams for websites and app data streams for mobile apps. If your business has both a website and a mobile app, you may have a data stream for the website, a second data stream for the iOS app, and a third data stream for the Android app.

In most cases, you should use a single web data stream to measure the web user journey to ensure consistent user and session reporting. For web journeys that span domains, use a single web data stream combined with cross domain measurement.

When creating your Google Analytics account, you should map the account and properties you set up back to your business structure. In general, it's a best practice to set up your account structure with one account per company and one property per brand or business unit.

## References

Next -> [setup-data-streams-in-ga](/wiki/setup-data-streams-in-ga/)
