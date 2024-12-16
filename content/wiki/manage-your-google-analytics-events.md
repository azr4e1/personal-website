+++
title = "Manage your Google Analytics Events"
author = "Lorenzo Drumond"
date = "2024-01-15T17:01:55"
tags = ["analytics",  "sales",  "account",  "marketing",  "tag",  "data_stream",  "firebase",  "google",  "advertising",  "data",  "structure",  "mobile",  "property",  "real_time",  "recorded",  "website",  "reports",  "ga4"]
+++


# Manage your Google Analytics Events
Google Analytics collects and stores user interactions with your website or your app as events.

Event parameters are collected as well, which give additional information with each event

There will be times when there are events that you will want to collect, that are specific to your business.

Google Analytics will provide a set of pre-defined events called recommended events.

If you need to collect events not included in recommended events, you can set up custom events and parameters specific to your business needs. We recommend following a similar naming convention, and suggest reusing event names and parameter names, where possible, to streamline your data collection and reporting efforts.

The values of these parameters collected will distinguish this data, and allow you to analyze it in detail. In the Admin menu, you can view and manage events being collected.

When you add recommended events, you'll start sending this event data to Google Analytics, but you need to register custom dimensions and metrics that correspond to the event parameters to see them in your reports. This can be done in the Admin section.

Creating a custom dimension can be done in just a few easy steps.
- First, you'll provide the name of the custom dimension or metric that you want to create. It's a good practice to use the same name as the parameter that you're registering.
- When creating a custom dimension, you'll also need to define the scope of that dimension. You have three options; event, user or item scope dimensions. The scope determines how custom dimensions are applied to your data.:
  - Event scope: provides information about an action that a user performs. For example, the title of an article that someone viewed would be an event scope dimension.
  - User scope: provides information about the user who performed the action. For example, the geographic location of the person who viewed an article would be a user scope dimension.
  - Item scope: provides information about the products or services that users interact with in an event. For example, when someone makes a purchase on the merchandise store, we might want to know what the color of the item was that was sold.

The final step is choosing the parameter you want to register from the
drop-down menu. All parameters that you're sending to Google Analytics, that
have not yet registered as custom dimensions, will show up in this list.

Creating a custom metric follows the same process, but a custom metric always
has an event scope, so no need to define the scope for these.

# References

Next -> [manage-and-filter-the-data-you-collect](/wiki/manage-and-filter-the-data-you-collect/)
