+++
toc = true
hideReply = true
title = "Setup data streams in GA"
author = "Lorenzo Drumond"
date = "2023-12-06T12:54:37"
tags = ["structure",  "google",  "firebase",  "mobile",  "property",  "website",  "account",  "analytics",  "advertising",  "ga4",  "data_stream",  "marketing",  "sales",  "data"]
+++


GA is a web analytics platform that allows you to collect and analyse data about websites and mobile apps interactions with your customer base

To connect a website to GA, you'll need tags (snippets of JS code) embedded in the HTML. For a mobile app, you'll need to use the Firebase SDK

A GA Account is made of properties and data streams.

Let's assume we've already created an account and a property in GA.

## Web data stream
To tag your website you'll first navigate to the data stream's creation screen,
choose web, and then enter your website URL. This will generate a measurement
ID and website tags specifically for your website.

To add this tag to your website's code, you have a few options:
- Use Google Tag Manager to add your Google tag
- Manually add your Google tag to your website's code
- Provide your measurement ID or Google tag to your website builder

### Website builder
If you are using a website
builder or a CMS system, you should copy the measurement ID and paste it into
your website builder account. You can select your website builder to view
instructions on how to add the measurement ID to your website.

### Google Tag Manager
If you do not use a website builder, you'll need to install the Google tag on
your website. There are two options to choose from. The first option is to use
Google Tag Manager to install the tag. Google Tag Manager allows you to install
code on your website pages and add to or change that code at any time using the
account's interface instead of having to go back and edit the code itself. In
addition, Tag Manager serves as a central place to manage and update all of
your marketing and website tags.

### Manual
The second option is to manually install the tag on each page of your site.
When you choose this option, you'll see the new website tag listed in the UI.
This tag will need to be installed on every page of your website immediately
after the head tag. Once you install the Analytics tag on your website, you'll
start collecting many points of data automatically to the Google Analytics
property. With a bit more implementation, you can even enhance your data
collection with recommended and custom events, which we'll cover later.

## References

Next -> [set-up-your-app-for-data-collection](/wiki/set-up-your-app-for-data-collection/)
