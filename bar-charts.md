---
layout: page
category: Data visualisation
title: Bar charts
regions:
  - North East
  - North West
  - Yorkshire and the Humber
  - East Midlands
  - West Midlands
  - East of England
  - London
  - South East
  - South
---

Bar charts are one of the simplest and easy-to-understand forms of data visualisation. They allow values to be compared faster than when reading numbers in a list or table.

Our bar charts are primarily horizontal, with the labels on the left, as this:

* Allows for longer labels
* Means that charts with lots of categories expand vertically, in the same scroll direction as text.

## Bars

Where there is a single category, all bars should be the same colour.

The height of each bar should be no less than 30&#160;pixels, with no less than 10&#160;pixels of space between them. Charts with fewer values can use bigger, more spaced out bars.

## Labels

We also always display the value for each bar as a number (with a percentage sign if applicable). These appear to the right of each bar. To save space, the values for the widest bars (or any approaching 100%) can be displayed within the bar instead.

Where possible, the labels for the bar categories (y axis) and the metric (x axis) should be made clear from the chart title. This makes it faster to understand what the chart it showing, and avoids the need for vertical text on the chart (which is slower to read).

## Grid lines and values

Grid lines on the horizontal axis help to re-inforce the scale. They should be:

* spaced out (not too close together)
* appear underneath the bars (on the z-axis)
* poke out slightly above the first bar and below the last one
* thin and grey

Values should appear below each of the grid lines, in a smaller font size.

Where the value is a percentage, the percentage sign (%) should be added either to the last value, or to all values, rather than appearing as an axis label.

## Examples

This chart follows our design patterns and principles:

<figure class="example good">
  <figcaption>Example bar chart (not real data)</figcaption>
  <svg viewbox="0 -80 960 420">
    <text x="0" y="-30" font-weight="bold">Percentage of people who felt they belong strongly to Britain by ethnicity</text>
    <text x="60" y="24" font-weight="bold" text-anchor="end" font-size="16">All</text>
    <text x="60" y="74" font-weight="bold" text-anchor="end" font-size="16">Asian</text>
    <text x="60" y="124" font-weight="bold" text-anchor="end" font-size="16">Black</text>
    <text x="60" y="174" font-weight="bold" text-anchor="end" font-size="16">Mixed</text>
    <text x="60" y="224" font-weight="bold" text-anchor="end" font-size="16">White</text>
    <text x="60" y="274" font-weight="bold" text-anchor="end" font-size="16">Other</text>
    {% for i in (0..10) %}
      <line x1="{{ i | times: 85 | plus: 80.5 }}" x2="{{ i | times: 85 | plus: 80.5 }}" y1="-10" y2="295" stroke="#e6e6e6" stroke-width="1" />
      <text x="{{ i | times: 85 | plus: 80.5 }}" y="315" text-anchor="middle" font-size="16">{{ i | times: 10 }}{% if i == 10 %}%{% endif %}</text>
    {% endfor %}
    <rect width="{{ 90 | times: 8.5 }}" height="35" x="80" y="0" fill="#2B8CC4"></rect>
    <rect width="{{ 99 | times: 8.5 }}" height="35" x="80" y="50" fill="#2B8CC4"></rect>
    <rect width="{{ 75 | times: 8.5 }}" height="35" x="80" y="100" fill="#2B8CC4"></rect>
    <rect width="{{ 65 | times: 8.5 }}" height="35" x="80" y="150" fill="#2B8CC4"></rect>
    <rect width="{{ 35 | times: 8.5 }}" height="35" x="80" y="200" fill="#2B8CC4"></rect>
    <rect width="{{ 51 | times: 8.5 }}" height="35" x="80" y="250" fill="#2B8CC4"></rect>
    <text x="{{ 90 | times: 8.5 | plus: 85.5 }}" y="24" text-anchor="start">85%</text>
    <text x="{{ 99 | times: 8.5 | plus: 75.5 }}" y="74" text-anchor="end" fill="white">99%</text>
    <text x="{{ 75 | times: 8.5 | plus: 85.5 }}" y="124" text-anchor="start">75%</text>
    <text x="{{ 65 | times: 8.5 | plus: 85.5 }}" y="174" text-anchor="start">65%</text>
    <text x="{{ 35 | times: 8.5 | plus: 85.5 }}" y="224" text-anchor="start">35%</text>
    <text x="{{ 51 | times: 8.5 | plus: 85.5 }}" y="274" text-anchor="start">51%</text>
  </svg>
</figure>

This chart shows a few cases of what not to do:

<figure class="example bad">
  <figcaption>Example bar chart (not real data)</figcaption>
  <svg viewbox="0 -80 960 420">
    <text x="0" y="-30" font-weight="bold">People who felt they belong strongly to Britain</text>
    <text x="20" y="140" font-weight="normal" text-anchor="middle" font-size="16" transform="rotate(-90, 20, 140)" fill="#6F777B">Ethnicity</text>
    <text x="30" y="24" font-weight="bold" text-anchor="start" font-size="16">All</text>
    <text x="30" y="74" font-weight="bold" text-anchor="start" font-size="16">Asian</text>
    <text x="30" y="124" font-weight="bold" text-anchor="start" font-size="16">Black</text>
    <text x="30" y="174" font-weight="bold" text-anchor="start" font-size="16">Mixed</text>
    <text x="30" y="224" font-weight="bold" text-anchor="start" font-size="16">White</text>
    <text x="30" y="274" font-weight="bold" text-anchor="start" font-size="16">Other</text>
    <rect width="{{ 90 | times: 8.5 }}" height="35" x="80" y="0" fill="#DF3034"></rect>
    <rect width="{{ 99 | times: 8.5 }}" height="35" x="80" y="50" fill="#F47738"></rect>
    <rect width="{{ 75 | times: 8.5 }}" height="35" x="80" y="100" fill="#FFBF47"></rect>
    <rect width="{{ 65 | times: 8.5 }}" height="35" x="80" y="150" fill="#006435"></rect>
    <rect width="{{ 35 | times: 8.5 }}" height="35" x="80" y="200" fill="#005EA5"></rect>
    <rect width="{{ 51 | times: 8.5 }}" height="35" x="80" y="250" fill="#2B8CC4"></rect>
    {% for i in (0..10) %}
      <line x1="{{ i | times: 85 | plus: 80.5 }}" x2="{{ i | times: 85 | plus: 80.5 }}" y1="-10" y2="295" stroke="#e6e6e6" stroke-width="1" />
      <text x="{{ i | times: 85 | plus: 80.5 }}" y="315" text-anchor="middle" font-size="16">{{ i | times: 10 }}</text>
    {% endfor %}
    <text x="505" y="340" font-weight="normal" text-anchor="middle" font-size="16" fill="#6F777B">%</text>
  </svg>
</figure>

## Category groups

Sometimes the categories of the data can be meaningfully grouped into a smaller set of broader categories.

This is often the case for ethnicity data, for example where “Black African”, “Black Caribbean” and “Black other” can be aggregated together as “Black” (these categories are based on Census data). Where the data is robust enough, it can be useful to show both level of these categorisations.

To make the relationship between the broad and shallow categories clear, the bar chart design should:

* Show the title of the broad category group in a heavier font
* Have extra spacing between the broad category groups
* Use a different colour for the broad vs shallow categories

This chart shows an example:

<figure class="example good">
  <figcaption>Example bar chart (not real data)</figcaption>
  <svg viewbox="0 0 960 800" width="960" height="800">
    <text x="0" y="40" font-weight="bold">Percentage of pupils meeting the expected standard by ethnicity</text>
    <text x="190" y="80" font-weight="bold" text-anchor="end" font-size="16">All</text>
    <text x="190" y="120" font-weight="bold" text-anchor="end" font-size="16">Asian</text>
    <text x="190" y="150" font-weight="normal" text-anchor="end" font-size="16">Bangladeshi</text>
    <text x="190" y="180" font-weight="normal" text-anchor="end" font-size="16">Chinese</text>
    <text x="190" y="210" font-weight="normal" text-anchor="end" font-size="16">Indian</text>
    <text x="190" y="240" font-weight="normal" text-anchor="end" font-size="16">Pakistani</text>
    <text x="190" y="270" font-weight="normal" text-anchor="end" font-size="16">Asian other</text>
    <text x="190" y="310" font-weight="bold" text-anchor="end" font-size="16">Black</text>
    <text x="190" y="340" font-weight="normal" text-anchor="end" font-size="16">Black African</text>
    <text x="190" y="370" font-weight="normal" text-anchor="end" font-size="16">Black Caribbean</text>
    <text x="190" y="400" font-weight="normal" text-anchor="end" font-size="16">Black other</text>
    <text x="190" y="440" font-weight="bold" text-anchor="end" font-size="16">Mixed</text>
    <text x="190" y="470" font-weight="normal" text-anchor="end" font-size="16">White and Asian</text>
    <text x="190" y="500" font-weight="normal" text-anchor="end" font-size="16">White and Black African</text>
    <text x="190" y="530" font-weight="normal" text-anchor="end" font-size="16">White and Black Caribbean</text>
    <text x="190" y="570" font-weight="bold" text-anchor="end" font-size="16">White</text>
    <text x="190" y="600" font-weight="normal" text-anchor="end" font-size="16">White British</text>
    <text x="190" y="630" font-weight="normal" text-anchor="end" font-size="16">White Irish</text>
    <text x="190" y="660" font-weight="normal" text-anchor="end" font-size="16">Gypsy or Irish Traveller</text>
    <text x="190" y="690" font-weight="normal" text-anchor="end" font-size="16">White other</text>
    <text x="190" y="730" font-weight="bold" text-anchor="end" font-size="16">Any other</text>
    {% for i in (0..10) %}
      <line x1="{{ i | times: 70 | plus: 210.5 }}" x2="{{ i | times: 70 | plus: 210.5 }}" y1="55" y2="745" stroke="#e6e6e6" stroke-width="1" />
      <text x="{{ i | times: 70 | plus: 210.5 }}" y="765" text-anchor="middle" font-size="16">{{ i | times: 10 }}{% if i == 10 %}%{% endif %}</text>
    {% endfor %}
    <rect width="{{ 70 | times: 7 }}" height="25" x="210.0" y="62" fill="#2B8CC4" />
    <rect width="{{ 75 | times: 7 }}" height="25" x="210.0" y="102" fill="#2B8CC4" />
    <rect width="{{ 75 | times: 7 }}" height="25" x="210.0" y="132" fill="#B3CBD9" />
    <rect width="{{ 82 | times: 7 }}" height="25" x="210.0" y="162" fill="#B3CBD9" />
    <rect width="{{ 67 | times: 7 }}" height="25" x="210.0" y="192" fill="#B3CBD9" />
    <rect width="{{ 81 | times: 7 }}" height="25" x="210.0" y="222" fill="#B3CBD9" />
    <rect width="{{ 68 | times: 7 }}" height="25" x="210.0" y="252" fill="#B3CBD9" />
    <rect width="{{ 72 | times: 7 }}" height="25" x="210.0" y="292" fill="#2B8CC4" />
    <rect width="{{ 60 | times: 7 }}" height="25" x="210.0" y="322" fill="#B3CBD9" />
    <rect width="{{ 65 | times: 7 }}" height="25" x="210.0" y="352" fill="#B3CBD9" />
    <rect width="{{ 92 | times: 7 }}" height="25" x="210.0" y="382" fill="#B3CBD9" />
    <rect width="{{ 70 | times: 7 }}" height="25" x="210.0" y="422" fill="#2B8CC4" />
    <rect width="{{ 78 | times: 7 }}" height="25" x="210.0" y="452" fill="#B3CBD9" />
    <rect width="{{ 69 | times: 7 }}" height="25" x="210.0" y="482" fill="#B3CBD9" />
    <rect width="{{ 63 | times: 7 }}" height="25" x="210.0" y="512" fill="#B3CBD9" />
    <rect width="{{ 69 | times: 7 }}" height="25" x="210.0" y="552" fill="#2B8CC4" />
    <rect width="{{ 75 | times: 7 }}" height="25" x="210.0" y="582" fill="#B3CBD9" />
    <rect width="{{ 33 | times: 7 }}" height="25" x="210.0" y="612" fill="#B3CBD9" />
    <rect width="{{ 26 | times: 7 }}" height="25" x="210.0" y="642" fill="#B3CBD9" />
    <rect width="{{ 70 | times: 7 }}" height="25" x="210.0" y="672" fill="#B3CBD9" />
    <rect width="{{ 73 | times: 7 }}" height="25" x="210.0" y="712" fill="#2B8CC4" />
    <text x="{{ 70 | times: 7 | plus: 215 }}" y="80" text-anchor="start" font-size="16">70%</text>
    <text x="{{ 75 | times: 7 | plus: 215 }}" y="120" text-anchor="start" font-size="16">75%</text>
    <text x="{{ 75 | times: 7 | plus: 215 }}" y="150" text-anchor="start" font-size="16">75%</text>
    <text x="{{ 82 | times: 7 | plus: 215 }}" y="180" text-anchor="start" font-size="16">82%</text>
    <text x="{{ 67 | times: 7 | plus: 215 }}" y="210" text-anchor="start" font-size="16">67%</text>
    <text x="{{ 81 | times: 7 | plus: 215 }}" y="240" text-anchor="start" font-size="16">81%</text>
    <text x="{{ 68 | times: 7 | plus: 215 }}" y="270" text-anchor="start" font-size="16">68%</text>
    <text x="{{ 72 | times: 7 | plus: 215 }}" y="310" text-anchor="start" font-size="16">72%</text>
    <text x="{{ 60 | times: 7 | plus: 215 }}" y="340" text-anchor="start" font-size="16">60%</text>
    <text x="{{ 65 | times: 7 | plus: 215 }}" y="370" text-anchor="start" font-size="16">65%</text>
    <text x="{{ 92 | times: 7 | plus: 215 }}" y="400" text-anchor="start" font-size="16">92%</text>
    <text x="{{ 70 | times: 7 | plus: 215 }}" y="440" text-anchor="start" font-size="16">70%</text>
    <text x="{{ 78 | times: 7 | plus: 215 }}" y="470" text-anchor="start" font-size="16">78%</text>
    <text x="{{ 69 | times: 7 | plus: 215 }}" y="500" text-anchor="start" font-size="16">69%</text>
    <text x="{{ 63 | times: 7 | plus: 215 }}" y="530" text-anchor="start" font-size="16">63%</text>
    <text x="{{ 69 | times: 7 | plus: 215 }}" y="570" text-anchor="start" font-size="16">69%</text>
    <text x="{{ 75 | times: 7 | plus: 215 }}" y="600" text-anchor="start" font-size="16">75%</text>
    <text x="{{ 33 | times: 7 | plus: 215 }}" y="630" text-anchor="start" font-size="16">33%</text>
    <text x="{{ 26 | times: 7 | plus: 215 }}" y="660" text-anchor="start" font-size="16">26%</text>
    <text x="{{ 70 | times: 7 | plus: 215 }}" y="690" text-anchor="start" font-size="16">70%</text>
    <text x="{{ 73 | times: 7 | plus: 215 }}" y="730" text-anchor="start" font-size="16">73%</text>
  </svg>
</figure>

## Multiple bar charts

Where the data can be broken down by a second category (in addition to ethnicity), such as by region, multiple bar charts can be used.

These are smaller (a third of the width of a regular chart, on desktop) to allow the charts to be compared with each other.

As comparing data by ethnicity is still the primary user need, the categories of ethnicity should be placed together within each of the smaller charts, rather than be across them.

All of the smaller charts should use the same scale.

There should be no more than 16 smaller charts, and no more than 10 bars within each chart.


<figure class="example good">
  <figcaption>Example multiple bar charts (not real data)</figcaption>
  <div style="font-weight: bold; text-align: center; margin-top: 20px; margin-bottom: 20px;">Percentage of adults who were recent internet users by ethnicity and region</div>
  <div class="multiple-charts">
  {% for region in page.regions %}
    <svg viewbox="0 -60 300 350" width="300" height="350" class="small-multiple-chart">
      <text x="140" y="-30" font-weight="bold" font-size="16" text-anchor="middle">{{ region }}</text>
      <text x="70" y="20" text-anchor="end" font-size="16">All</text>
      <text x="70" y="60" text-anchor="end" font-size="16">Asian</text>
      <text x="70" y="100" text-anchor="end" font-size="16">Black</text>
      <text x="70" y="140" text-anchor="end" font-size="16">Mixed</text>
      <text x="70" y="180" text-anchor="end" font-size="16">White</text>
      <text x="70" y="220" text-anchor="end" font-size="16">Other</text>
      {% for i in (0..2) %}
        <line x1="{{ i | times: 85 | plus: 80.5 }}" x2="{{ i | times: 85 | plus: 80.5 }}" y1="-5" y2="235" stroke="#e6e6e6" stroke-width="1" />
        <text x="{{ i | times: 85 | plus: 80.5 }}" y="252" text-anchor="middle" font-size="14">{{ i | times: 50 }}{% if i == 2 %}%{% endif %}</text>
      {% endfor %}
      <rect width="{{ 78 | times: 1.7 | plus: 0.5 }}" height="30" x="80" y="0" fill="#2B8CC4"></rect>
      <rect width="{{ 91 | times: 1.7 | plus: 0.5 }}" height="30" x="80" y="40" fill="#2B8CC4"></rect>
      <rect width="{{ 72 | times: 1.7 | plus: 0.5 }}" height="30" x="80" y="80" fill="#2B8CC4"></rect>
      <rect width="{{ 23 | times: 1.7 | plus: 0.5 }}" height="30" x="80" y="120" fill="#2B8CC4"></rect>
      <rect width="{{ 66 | times: 1.7 | plus: 0.5 }}" height="30" x="80" y="160" fill="#2B8CC4"></rect>
      <rect width="{{ 13 | times: 1.7 | plus: 0.5 }}" height="30" x="80" y="200" fill="#2B8CC4"></rect>
      <text x="{{ 78 | times: 1.7 | plus: 85.5 }}" y="20"  font-size="16" text-anchor="start">78%</text>
      <text x="{{ 91 | times: 1.7 | plus: 75.5 }}" y="60"  font-size="16" text-anchor="end" fill="white">91%</text>
      <text x="{{ 72 | times: 1.7 | plus: 85.5 }}" y="100" font-size="16" text-anchor="start">72%</text>
      <text x="{{ 23 | times: 1.7 | plus: 85.5 }}" y="140" font-size="16" text-anchor="start">23%</text>
      <text x="{{ 66 | times: 1.7 | plus: 85.5 }}" y="180" font-size="16" text-anchor="start">66%</text>
      <text x="{{ 13 | times: 1.7 | plus: 85.5 }}" y="220" font-size="16" text-anchor="start">13%</text>
    </svg>
  {% endfor %}
  </div>
</figure>

## Missing data

Where data is missing from one or more bars, a symbol should be used, along with a key to the symbol below the graphs.

<figure class="example good">
  <figcaption>Example bar chart (not real data)</figcaption>
  <div style="font-weight: bold; text-align: center; margin-top: 20px; margin-bottom: 20px;">Percentage of adults who were recent internet users by ethnicity and gender</div>
  <svg viewbox="0 -30 465 360" height="390" width="465">
    <text x="232.5" y="-30" font-weight="bold" text-anchor="middle" font-size="16">Women</text>
    <text x="60" y="24" font-weight="normal" text-anchor="end" font-size="16">All</text>
    <text x="60" y="74" font-weight="normal" text-anchor="end" font-size="16">Asian</text>
    <text x="60" y="124" font-weight="normal" text-anchor="end" font-size="16">Black</text>
    <text x="60" y="174" font-weight="normal" text-anchor="end" font-size="16">Mixed</text>
    <text x="60" y="224" font-weight="normal" text-anchor="end" font-size="16">White</text>
    <text x="60" y="274" font-weight="normal" text-anchor="end" font-size="16">Other</text>
    {% for i in (0..5) %}
      <line x1="{{ i | times: 70 | plus: 80.5 }}" x2="{{ i | times: 70 | plus: 80.5 }}" y1="-10" y2="295" stroke="#e6e6e6" stroke-width="1" />
      <text x="{{ i | times: 70 | plus: 80.5 }}" y="315" text-anchor="middle" font-size="16">{{ i | times: 20 }}{% if i == 5 %}%{% endif %}</text>
    {% endfor %}
    <rect width="{{ 90 | times: 3.5 }}" height="35" x="80" y="0" fill="#2B8CC4"></rect>
    <rect width="{{ 99 | times: 3.5 }}" height="35" x="80" y="50" fill="#2B8CC4"></rect>
    <rect width="{{ 75 | times: 3.5 }}" height="35" x="80" y="100" fill="#2B8CC4"></rect>
    <circle cx="95" cy="168" r="12" fill="#A2A4A6" />
    <text x="95" y="174" text-anchor="middle" fill="White" font-weight="bold">?</text>
    <rect width="{{ 35 | times: 3.5 }}" height="35" x="80" y="200" fill="#2B8CC4"></rect>
    <rect width="{{ 51 | times: 3.5 }}" height="35" x="80" y="250" fill="#2B8CC4"></rect>
    <text x="{{ 90 | times: 3.5 | plus: 85.5 }}" y="24" text-anchor="start">85%</text>
    <text x="{{ 99 | times: 3.5 | plus: 75.5 }}" y="74" text-anchor="end" fill="white">99%</text>
    <text x="{{ 75 | times: 3.5 | plus: 85.5 }}" y="124" text-anchor="start">75%</text>
    <text x="{{ 35 | times: 3.5 | plus: 85.5 }}" y="224" text-anchor="start">35%</text>
    <text x="{{ 51 | times: 3.5 | plus: 85.5 }}" y="274" text-anchor="start">51%</text>
  </svg>
  <svg viewbox="0 -30 465 360" height="390" width="465">
    <text x="232.5" y="-30" font-weight="bold" text-anchor="middle" font-size="16">Men</text>
    <text x="60" y="24" font-weight="normal" text-anchor="end" font-size="16">All</text>
    <text x="60" y="74" font-weight="normal" text-anchor="end" font-size="16">Asian</text>
    <text x="60" y="124" font-weight="normal" text-anchor="end" font-size="16">Black</text>
    <text x="60" y="174" font-weight="normal" text-anchor="end" font-size="16">Mixed</text>
    <text x="60" y="224" font-weight="normal" text-anchor="end" font-size="16">White</text>
    <text x="60" y="274" font-weight="normal" text-anchor="end" font-size="16">Other</text>
    {% for i in (0..5) %}
      <line x1="{{ i | times: 70 | plus: 80.5 }}" x2="{{ i | times: 70 | plus: 80.5 }}" y1="-10" y2="295" stroke="#e6e6e6" stroke-width="1" />
      <text x="{{ i | times: 70 | plus: 80.5 }}" y="315" text-anchor="middle" font-size="16">{{ i | times: 20 }}{% if i == 5 %}%{% endif %}</text>
    {% endfor %}
    <rect width="{{ 90 | times: 3.5 }}" height="35" x="80" y="0" fill="#2B8CC4"></rect>
    <rect width="{{ 99 | times: 3.5 }}" height="35" x="80" y="50" fill="#2B8CC4"></rect>
    <rect width="{{ 75 | times: 3.5 }}" height="35" x="80" y="100" fill="#2B8CC4"></rect>
    <rect width="{{ 65 | times: 3.5 }}" height="35" x="80" y="150" fill="#2B8CC4"></rect>
    <rect width="{{ 35 | times: 3.5 }}" height="35" x="80" y="200" fill="#2B8CC4"></rect>
    <circle cx="95" cy="268" r="12" fill="#A2A4A6" />
    <text x="95" y="274" text-anchor="middle" fill="White" font-weight="bold">?</text>
    <text x="{{ 90 | times: 3.5 | plus: 85.5 }}" y="24" text-anchor="start">85%</text>
    <text x="{{ 99 | times: 3.5 | plus: 75.5 }}" y="74" text-anchor="end" fill="white">99%</text>
    <text x="{{ 75 | times: 3.5 | plus: 85.5 }}" y="124" text-anchor="start">75%</text>
    <text x="{{ 65 | times: 3.5 | plus: 85.5 }}" y="174" text-anchor="start">65%</text>
    <text x="{{ 35 | times: 3.5 | plus: 85.5 }}" y="224" text-anchor="start">35%</text>
  </svg>
  <div class="missing-data-explanation">
    <span class="missing-data sample-too-small"></span> Data withheld because a small sample size makes it unreliable
  </div>
</figure>