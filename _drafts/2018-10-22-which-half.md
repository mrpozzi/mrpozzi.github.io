---
layout: post
title: "Online Marketing Measurement: Which Half?"
date: 2018-10-25 8:30:00
categories: experimentation marketing statistics
description: A quick introduction to measuring the impact of Marketing spend
image: /images/online_marketing_measurements/wanamaker.jpg
image-sm: /images/online_marketing_measurements/wanamaker.jpg
---



A constant presence on today's internet are ads. They power Google and Facebook and follow us everywhere.
As with all marketing spend, they're an investment. As with most investments it's crucial to measure 
their return. What makes online marketing different is the unprecedented possibility of building accurate measurement tools. In this post I'll describe few techniques widely used in the industry and share a bit of the experience in the field I gained while building Airbnb's display marketing measurement framework. 


## Attribution & Incrementality

In order to fairly estimate the ROI we need to be able to attribute incremental purchases to the campaign that caused. We're not interested in reaching people that would purchased organically (i.e. on their own), but to reach people that would have not purchased had they not been reached by our ad. The difference between the two is the one between correlation and causation and can be exploited by targeting mechanisms. If we don't distinguish between organic and incremental purchases, a targeting algorithm would be rewarded for characterizing and targeting users that are more likely to buy, which would be "preaching to the choir".

What we want from our online campaigns is to reach those people that are to be convinced and to convince them to buy our product.

This is a bit more nuanced since, specially for goods like travel accomodation, we will probably need multiple touchpoints to build a relationship with the users and to slowly move them down the funnel.

Unfortunately the old school attribution systems rely on the infamous "Last Click": i.e. the ad that was clicked last before the purchase gets the credit. 

This is problematic because it doesn't distinguish between incremental and organic sales, but it also has a larger bias. 

Most users in the USA and Europe own multiple devices and log in from desktop, mobile, and tab. This makes tracking the user journey challenging. Cookies being deleted and multiple users logging in from the same device are just two of the issues with building and mantaining a device graph that could help identifying to which ads the user has been exposed. 

![jpg](/images/online_marketing_measurements/cross_device.jpg)


Due to this issue display channel (e.g. Facebook, Instagram, YouTube, etc.) are overly penalized, in comparison to channels lower in the funnel, such as SEM (Search Engine Marketing). 

In a "Last Click" world SEM marketing gets a large share of credit, also because users are likely to Google relevant keyword to be redirected to the site, which should be considered an organic (i.e. not incremental) purchase.

To understand how ridicolous "Last Click" attribution is, imagine to be proposing to your significant other, and if it would be reasonable to believe that the ring is the sole contributor to their positive response.

Fortunately statisticians have plenty of tricks up their sleeves and many experimental designs, dating back few centuries, can come to the rescue.


## Experimentation and Measurements


As stated above, the problem of measuring incrementality is precisely the problem of Correlation vs. Causation: we want to identify the purchases that we caused, not to correlate our ads with the user's propensity to buy.

The main challenge is to untangle the targeting from the user's actions as much as possible, which is not always easy in these complex settings.

Experimentation is the best tool to accurately measure causality while controlling for most known factors.

The design of the experiment will depend on the nature of the advertising platform: below the most popular options.


### Intent To Treat (ITT)

The first method I'm going to describe is a very old technique from the world of Clinical Trials, and it's one of the methodologies used in Facebook's [Conversion Lift Study](https://www.facebook.com/help/399737743699353?helpref=page_content) tool.



Clinical Trials -> explanation of name
Larger Socio-Economic Analyses -> vietnam vets

![jpg](/images/online_marketing_measurements/LiftFunnel.jpg)

![jpg](/images/online_marketing_measurements/ITT_design.jpg)


Easy math
Easy to Implement 
Hard to Power -> reach matters


### “Ghost” Ads

Google
Log “Potential Exposure”
Ideal Setting


![jpg](/images/online_marketing_measurements/ideal_setting.jpg)


Extremely hard to implement

![jpg](/images/online_marketing_measurements/timeline_ghost_ads.jpg)

why more sophisticated targeting might give problems

![jpg](/images/online_marketing_measurements/flow_chart_ghost_ads.jpg)




### "Split" testing




### Campaign sizing 

Run Campaigns as Experiments
Targeting as defines the population
Need to be Democratized


## Geo-Level Experimentation

Randomize by DMA
Aggregate Results
Large Scale Operation
Loss
synth control
Experiment Tracking
(pre-post)
http://www.unofficialgoogledatascience.com/2016/06/estimating-causal-effects-using-geo.html


## Data validation



External data sources
Brand Metrics (YouGov)
Spend Data
Control Variables (MMM)


Fail Fast
Foster Data Culture
More Eyes on the Data The Best
Stakeholders have a better sense for the data


## Resources

- Field Experiments
- Mostly Harmless
- Facebook API
- Google paper
http://www.unofficialgoogledatascience.com/2016/06/estimating-causal-effects-using-geo.html
