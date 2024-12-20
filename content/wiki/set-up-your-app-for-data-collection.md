+++
title = "Set up your App for Data Collection"
author = "Lorenzo Drumond"
date = "2024-01-15T14:17:03"
tags = ["structure",  "google",  "firebase",  "mobile",  "property",  "website",  "account",  "analytics",  "advertising",  "ga4",  "data_stream",  "marketing",  "sales",  "data"]
+++


You can use GA to measure websites, apps and both in the same property.

App data streams are powered by the Firebase SDK.

If your app already uses Firebase, you can enable analytics from the Firebase console. Otherwise, Google Analytics can create a project for you.

When you create an app data stream, Analytics creates a corresponding Firebase project and app data stream, and it automatically links the Firebase project to your property if your project and property aren't already linked.

In Admin, click on Data Streams and select the app's platform. For Android you'll need the package name, on iOS the bundle ID.

Before measuring activity you'll need to implement the Firebase SDK in your app.

Once Firebase is configured for your app, a number of events are automatically collected for you, like first opens, in-app purchases and screen views.

You'll use the log event method in your app's code to define and collect up to 500 different event names with no limit on total volume.

# References

Next -> [confirm-data-is-being-collected](/wiki/confirm-data-is-being-collected/)
