+++
title = "Why data might look different between Reports and Explore in GA"
author = "Lorenzo Drumond"
date = "2024-01-22T12:16:41"
tags = ["sales",  "google",  "property",  "tag",  "data_stream",  "data",  "structure",  "website",  "analytics",  "account",  "marketing",  "firebase",  "filters",  "recorded",  "reports",  "comparisons",  "advertising",  "mobile",  "real_time",  "ga4"]
+++


Usually, you should find the same data in both Reports and Explorations. But sometimes you may notice differences in the data shown in each area. Here are a few reasons why:

- Metrics and dimensions: Some metrics and dimensions available in Reports aren't supported in Explore.
- Processing time differences: If you set your date range to include data from the past 48 hours, you may notice slightly different results depending on when the data is processed.
- Sampling differences: Reports are unsampled, meaning they're based on 100% of the available data. Explorations, on the other hand, may be based on sampled data if the dataset is very large. If you do encounter sampling in Explore, try shortening the date range to reduce the impact.

# References
