+++
toc = true
hideReply = true
title = "Analytics 360"
author = "Lorenzo Drumond"
date = "2024-01-23T11:02:17"
tags = ["segment",  "sql",  "conversions",  "website",  "sequence",  "account",  "customers",  "optimize",  "ga4",  "google",  "audience",  "sla",  "tag",  "property",  "personalization",  "sales",  "conditions",  "marketing",  "data_stream",  "reports",  "advertising",  "analytics",  "aggregated",  "models",  "GCP",  "mobile",  "bigquery",  "data",  "scope"]
+++


Analytics 360 is the paid enterprise version of Google Analytics. It introduces additional features more suitable to big enterprise needs.

## More flexible account structure
Analytics 360 introduces two additional ways to organize your Analytics data: subproperties and roll-up properties.
- Subproperties: A subproperty gets its data from one other property called the source property. The data in a subproperty is typically a subset of the data in its source property. Ideal for data and user governance.
- Roll-up properties: A roll-up property contains data from two or more source properties. It can include source data from ordinary properties and subproperties, but not other roll-up properties. Ideal for bird's eye view of business.

## Enterprise-level features
- More robust Change History so you can review when settings are edited
- Service Level Agreements (SLAs) across many product functionalities, such as data collection, reporting, processing, and attribution.

## Higher limits for enterprises

| Feature        | Standard Analytics Property | Analytics 360 Property |
|----------------|-----------------------------|------------------------|
| Events         | 25 params per event         | 100 params per event   |
| Dimensions     | 50 custom dimensions        | 125 custom dimensions  |
| Metrics        | 50 custom metrics           | 125 custom metrics     |
| Conversions    | 30 types                    | 50 types               |
| Audiences      | 100                         | 400                    |
| Data retention | Up to 14 months             | Up to 50 months        |
| BQ exports     | 1M events                   | Billions of events     |

## References
- [link-google-ads-and-ga](/wiki/link-google-ads-and-ga/)
