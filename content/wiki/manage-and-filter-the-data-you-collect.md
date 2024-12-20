+++
toc = true
title = "Manage and Filter the Data you collect"
author = "Lorenzo Drumond"
date = "2024-01-15T17:28:56"
tags = ["analytics",  "sales",  "account",  "marketing",  "tag",  "data_stream",  "firebase",  "google",  "advertising",  "data",  "structure",  "property",  "mobile",  "real_time",  "recorded",  "website",  "reports",  "ga4"]
+++


Cross domain measurement allows you to attribute activity to a single customer.

For example, you may have one website where customers shop and a separate website for processing transactions.

In cases like these, you would want to set up cross-domain measurement so you can report on the user journey across both websites.

To use cross-domain measurement, you'll want to collect all website data in the same property, meaning each website will use the same measurement ID and be collected together in a single data stream. You'll also need to have editor permission on the property.

To set up cross-domain measurement:

Admin -> Data Streams -> Select your stream -> Configure Tag Settings -> Configure your domains -> enter information on the the domains to include.


## Unwanted referrals
Google Analytics automatically recognizes what website a customer visited
immediately before arriving on your site. It will display the domain names of
those sites as referral traffic sources in your reports. You can make sure that
your reports only include relevant referrals by creating a set of filtering
conditions to filter out traffic. You'll want to identify and filter out these
unwanted referrals to your website. Unwanted referrals are segments of website
traffic that arrive on your website through unintended sources, like links from
third party websites.

Admin -> Data Stream -> Select your stream -> Configure Tag Settings -> List Unwanted Referrals -> Add domains to exclude

Filter conditions are evaluated for every webpage on which you have a Google Analytics tag. By default, Analytics will not identify traffic as a referral from your domain or other domains that you own that are set up as part of cross-domain measurement. Keep in mind, you can only configure a maximum of 50 unwanted referrals per data stream.

## Data Filters
 A data filter lets you filter out data so that it isn't processed by Google
Analytics and won't show up in your reports. There are two main reasons to use
these filters. The first is to exclude internal traffic coming from you or your
employees. It lets you specify a range of IP addresses to exclude.

The second is to use a data filter to exclude developer traffic when
developers are using tools to debug or troubleshoot issues in DEBUG mode.

## References

Next -> [manage-your-google-analytics-conversions](/wiki/manage-your-google-analytics-conversions/)
