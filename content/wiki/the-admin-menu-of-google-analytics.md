+++
title = "The Admin Menu of Google Analytics"
author = "Lorenzo Drumond"
date = "2024-01-15T15:29:07"
tags = ["structure",  "reports",  "mobile",  "data_stream",  "firebase",  "ga4",  "analytics",  "google",  "recorded",  "tag",  "real_time",  "data",  "sales",  "marketing",  "website",  "advertising",  "account",  "property"]
+++


The admin menu is an essential tool to manage users, accounts, properties, and
data streams. It's also where you manage the creation of advanced features such
as custom dimensions and metrics, audiences, and more.

You can add or remove users in your account, with six levels of priviledge. Each role has the described permissions and the permissions of the roles under it:
- The administrator role provides full control of the account, including adding additional users. The creator of the account has administrator access by default.
- Editor: Editors have full control of the settings of the account and its properties. But editors can't manage users.
- Marketer: Marketers can create, edit, and delete audiences, conversions, attribution models, events, and lookback windows.
- Analyst: allow the user to create and edit dashboards and reports. However, they will not be able to edit account and data settings or manage user permissions.
- Viewer: Viewers can see settings and data, and they can change the data they see in reports, like adding comparisons or adding a secondary dimension. Viewers can see new reports and collections in the left navigation, but they can't make changes to the navigation.
- None: These users have no role for this account or property, but they may have a role for a related account or property.

Roles are inherited by default. For example, when you give a user a role at the account level, that user has the same role for all the properties in that account.

An administrator can always edit a user's access level or delete users at any
time. Additionally, in admin, you can edit the account property and data stream
settings.

There are additional data settings outside of the data stream where you can
enable or disable various data collection features, including data retention.
You can adjust the retention period for data collected that is associated with
cookies, user identifiers, or advertising identifiers. This setting doesn't
affect most standard reporting, which is based on aggregated data, but will
affect the data used in more advanced tools like Explore.

If at any point you want to delete a data stream, property, or even an entire
account, you can do so in the admin menu. When you delete an account property
or data stream, it will move into the trash can where it'll be held for 35 days
before being permanently deleted.

You can view changes you or others have made to the account in the account change history.

# References

Next -> [power-your-reports-with-dimensions-and-metrics](/wiki/power-your-reports-with-dimensions-and-metrics/)
