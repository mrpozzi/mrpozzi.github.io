---
layout: post
title: "How Fast am I Swimming?"
date: 2018-09-20 8:30:00
categories: marathonswimming
featured_image: /images/2018_season/tahoe_italia.jpeg
---
I personally always have trouble converting from my hundred yards pace to my mile time, or to go from my total time to my 100 yards pace. This is particularly important in marathon swimming, when your pace is crucial to time your crossing and do the dance with the tides.

A very important metric is the pace per mile, but I tend to reason better in terms of 100 yards (meters) pace (also thanks to my GPS watch).

To help me with that I wrote down some `Python` [utility](https://github.com/mrpozzi/polso/blob/master/miscellanea/pace_calculator.py) to go from the split time to the total time and viceversa, and to calculate my pace per mile


```python
import sys
sys.path.append("/Users/lpozzi/Documents/GitHub/polso/miscellanea/")
from pace_calculator import (hundred_split_to_total, total_to_hundred_split, 
                             hundred_pace_to_mile_pace, total_to_mph)
```

### Split to total

First let's ballpark how long it would take me to swim a mile at some plausible open water times


```python
# mile pace
hundred_split_to_total(1, 50, 16.5)
hundred_split_to_total(1, 35, 16.5)
hundred_split_to_total(1, 40, 16.5)
```

    0:30:15
    0:26:7
    0:27:30


All cool, but how many miles per hour is that?


```python
# miles per hour
hundred_pace_to_mile_pace(1, 50)
hundred_pace_to_mile_pace(1, 35)
hundred_pace_to_mile_pace(1, 40)
```

    1.9834710743801653 miles/h
    2.2966507177033493 miles/h
    2.1818181818181817 miles/h


### Tahoe

Now let's look back at my recent [Tahoe Length](https://db.marathonswimmers.org/events/lake-tahoe/) crossing:


```python
total_to_hundred_split(10, 31, 0, 21.5*16.5)
```

    0:1:46



```python
total_to_mph(10, 31, 0, 21.5)
```

    2.0443740095087164


I clearly have to work more on my feeds: talk less and eat quick ;)

[source](https://github.com/mrpozzi/mrpozzi.github.io/blob/master/notebooks/HowFastAmIGoing.ipynb)
