--- 
layout: post 
title: "Picnic in San Francisco" 
date: 2018-04-06 8:30:00 
categories: applications data-mining scraping 
featured_image: /images/rainy_bridge.jpg
---




My beloved [SF Tsunami Master Team](http://sftsunami.org/) had planned a great picnic for this week end. For the second year in a row the plan had to be canceled due to inclement weather. Just like the year before.

I admit I sneered at the idea of having the picnic the same month as last year, considering that it got canceled once. However, forming opinions based on a sample size of two with a sprinkle of gut feeling on top is not the way a Scientist does things, so I thought it would be interesting and constructive to pull some data to validate or disprove my prejudice and to provide a valid alternative.

My hypothesis is quite simple: in April chances of rain are way higher than in May, while temperatures are pretty constant, so the latter would be a better option to plan outdoor activities.


With a quick Google search I ran into [this](ggweather.com) site which reports monthly and daily information about temperature and precipitations. 

The format is quite easy to scrape. The data I'm interested in are the monthly average temperatures and the number of rainy days per month. For more about how I gathered the data checkout the [source](https://github.com/mrpozzi/mrpozzi.github.io/blob/master/notebooks/PicnicInSF.ipynb).


So, it turns out that the data confirms my hypothesis that having a picnic in SF in April is probably not the best idea if you want to frolic in the Sun, while your chances of having a successful event in May are almost **three times higher!**. In the figure below we can see how April has a 23% chances of rain, basically one day out of 4. We can have better conditions than in April as late as November, and yet I doubt people would consider reasonable to organize a picnic in November.


![png](/images/PicnicInSF_9_1.png)




<div>
  <style>
.dataframe {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

.dataframe td, .customers th {
    border: 1px solid #F5EFED;
    padding: 8px;
}

.dataframe tr:nth-child(even){background-color: #f2f2f2;}

.dataframe tr:hover {background-color: #F5EFED;}

.dataframe th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #546A76;
    color: white;
}
</style>

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Daily Chances of Rain</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Jan</th>
      <td>27.741935</td>
    </tr>
    <tr>
      <th>Feb</th>
      <td>31.428571</td>
    </tr>
    <tr>
      <th>Mar</th>
      <td>32.580645</td>
    </tr>
    <tr>
      <th>Apr</th>
      <td>23.666667</td>
    </tr>
    <tr>
      <th>May</th>
      <td>8.709677</td>
    </tr>
    <tr>
      <th>Jun</th>
      <td>5.416667</td>
    </tr>
    <tr>
      <th>Jul</th>
      <td>4.193548</td>
    </tr>
    <tr>
      <th>Aug</th>
      <td>3.548387</td>
    </tr>
    <tr>
      <th>Sep</th>
      <td>3.666667</td>
    </tr>
    <tr>
      <th>Oct</th>
      <td>13.870968</td>
    </tr>
    <tr>
      <th>Nov</th>
      <td>24.333333</td>
    </tr>
    <tr>
      <th>Dec</th>
      <td>33.870968</td>
    </tr>
  </tbody>
</table>
</div>



The takehome message should be:
- April is too soon to plan a picnic
- May is quite dry
- SF's weather is good enough to allow you to hang out outside as late as November!

[source](https://github.com/mrpozzi/mrpozzi.github.io/blob/master/notebooks/PicnicInSF.ipynb)
