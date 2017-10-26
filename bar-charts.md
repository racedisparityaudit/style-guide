---
layout: page
category: Data visualisation
title: Bar charts
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
    {% for i in (0..10) %}
      <line x1="{{ i | times: 85 | plus: 80.5 }}" x2="{{ i | times: 85 | plus: 80.5 }}" y1="-10" y2="295" stroke="#e6e6e6" stroke-width="1" />
      <text x="{{ i | times: 85 | plus: 80.5 }}" y="315" text-anchor="middle" font-size="16">{{ i | times: 10 }}</text>
    {% endfor %}
    <rect width="{{ 90 | times: 8.5 }}" height="35" x="80" y="0" fill="#2B8CC4"></rect>
    <rect width="{{ 99 | times: 8.5 }}" height="35" x="80" y="50" fill="#2B8CC4"></rect>
    <rect width="{{ 75 | times: 8.5 }}" height="35" x="80" y="100" fill="#2B8CC4"></rect>
    <rect width="{{ 65 | times: 8.5 }}" height="35" x="80" y="150" fill="#2B8CC4"></rect>
    <rect width="{{ 35 | times: 8.5 }}" height="35" x="80" y="200" fill="#2B8CC4"></rect>
    <rect width="{{ 51 | times: 8.5 }}" height="35" x="80" y="250" fill="#2B8CC4"></rect>
    <text x="505" y="340" font-weight="normal" text-anchor="middle" font-size="16" fill="#6F777B">%</text>
  </svg>
</figure>
