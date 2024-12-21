+++
toc = true
hideReply = true
title = "Combine business data in GA"
author = "Lorenzo Drumond"
date = "2024-01-23T10:08:54"
tags = ["privacy",  "segment",  "website",  "sequence",  "account",  "customers",  "ga4",  "google",  "audience",  "tag",  "property",  "personalization",  "sales",  "static",  "conditions",  "dynamic",  "marketing",  "data_stream",  "reports",  "advertising",  "analytics",  "aggregated",  "models",  "valuable",  "time",  "mobile",  "data",  "scope"]
+++


You can combine data coming from other sources like CRM or CMS into GA to expand and enrich the level of your analysis

GA provides several options to integrate external data into it:
- you can use GA interface to change existing events and create new events
- you can define _measurement protocols_: a standard set of rules for collecting and sending events directly to GA servers
- you can _import data_: upload data from external sources and join it with your GA data

## Create/Modify events
To modify an event, navigate to

Configure -> Events -> Modify evenet/Create event

## Measurement protocols
It lets you send data to Analytics from internet-connected devices like a kiosk or point-of-sale system that complement your website or app. Measurement Protocol is a different method of sending data than Google tags and the Firebase SDKs. While these methods automatically send events to Analytics once they are implemented, with Measurement Protocol you have to manually program events.

Measurement Protocol allows developers to make HTTP requests to send events directly to Google Analytics servers. This lets developers measure how users interact with their business from any HTTP-enabled environment, which can complement website and app data.

You can also add information to existing events that Analytics has already collected. Measurement Protocol data and events are joined with existing Analytics data via a join key, such as user_id or event_id. This lets events already in Analytics get matched with events that Measurement Protocol brings into Analytics.

## Data import
Data Import lets you upload your external data and combine it with or override existing Google Analytics data.

Data Import joins the offline data you upload with the event data that Analytics collects. The imported data enhances your reports, comparisons, and audiences. The result is a more complete picture of online and offline activity.

You can import:
- Cost data
- Item data
- User data
- Offline events

That data will be joined based one:
- Reporting/query time: Cost data and item data are joined at reporting/query time.
- Collection/processing time: User data and offline event data are joined at collection/processing time.

## References

Next -> [integrations-with-ga](/wiki/integrations-with-ga/)
