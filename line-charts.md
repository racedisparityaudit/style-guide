---
layout: page
category: Data visualisation
title: Line charts

---

Where we have data showing change over time, we use line charts in preference to [bar&nbsp;charts](bar-charts). This is because:

* The angle of the line makes it easier to see the rate of change between time periods.
* Multiple categories of data can be overlaid on the same chart, making it easier to compare.
* Gaps in the time periods, or irregular time periods, can be more easily shown and interpreted.

Time should always be presented on the horizontal axis, with the metric on the vertical axis. This is so that the data can be 'read' chronologically in the natural left-to-right reading order for English.

## Grid lines

Line charts should have horizontal grid lines only, to help users interpret the values for points on the lines. This should be light grey, thin and relatively spaced-out.

## Lines

The lines should be thicker than the grid lines. Where there are multiple lines on the same graph, they should be different colours to help make them easier to distinguish where there are overlaps.

There should be no more than 6 lines on any individual chart, otherwise it becomes too hard to read.

## Labels

The description for the vertical axis should be included within the chart title (eg&nbsp;"Percentage&nbsp;of...").

There is no need for a description for the horizontal axis, such as ("Months" or "Years") as this is self-evident from the grid line labels.

Where there are multiple lines on the same graph, the labels for each line should be ideally be placed next to each line, on the right. This avoids the need for a legend relying on colour only.

Where there lots of time periods covered by the graph, there is no need to label each and every one, especially if this leads to overlapping text. Instead the first and last time periods should be labelled, with some intermediate ones labelled if there is room.

The labels for the vertical axis should be right-aligned on the left of the chart, and centred against the grid lines they describe. A percentage symbol should be added if the unit is a percentage.

## Vertical scale

Where the metric is a percentage, the vertical axis should start from zero.

## Value callouts

To enable users to inspect the exact value for each of the points on a line chart (rather than having to guess from the grid lines), a 'callout' should appear when hovering or tapping any of the points. This should contain the exact value for the metric and the time period, as well as the line category (for charts with multiple lines).

## Examples

This chart follows our design patterns and principles:

<figure class="example good">
  <figcaption>Example line chart (not real data)</figcaption>
  <svg viewbox="0 0 960 420">
    <text x="0" y="40" font-weight="bold">Percentage of adults who smoke by ethnicity</text>
    {% for i in (0..6) %}
      <line x1="50" x2="760" y1="{{ i | times: 50 | plus: 80 }}" y2="{{ i | times: 50 | plus: 80 }}" stroke="#e6e6e6" stroke-width="1" />
      <text x="40" y="{{ i | times: 50 | plus: 85 }}" text-anchor="end" font-size="16">{{ i | times: 5 | minus: 30 | abs }}%</text>
    {% endfor %}
    {% for i in (0..6) %}
      <text x="{{ i | times: 110 | plus: 100 }}" y="405" text-anchor="middle" font-size="16">{{ i | plus: 2011 }}</text>
    {% endfor %}
      <path d="M 100,187.0 L 210,196.0 320,202.0 430,211.0 540,228.0 650,259.0 760,270.0" fill="none" stroke="#2B8CC4" stroke-width="2" />
      <path d="M 100,179.0 L 210,188.0 320,195.0 430,204.0 540,226.0 650,228.0 760,217" fill="none" stroke="#F44336" stroke-width="2" />
      <path d="M 100,265.0 L 210,280 320,271.0 430,258.0 540,259.0 650,264.0 760,312" fill="none" stroke="#4CAF50" stroke-width="2" />
      <path d="M 100,131.0 L 210,125.0 320,135.0 430,156.0 540,161.0 650,167.0 760,169" fill="none" stroke="#FFC107" stroke-width="2" />
      <path d="M 100,250 L 210,260 320,245.0 430,267.0 540,270 650,277.0 760,290" fill="none" stroke="#9C27B0" stroke-width="2" />
      <path d="M 100,290 L 210,295 320,299 430,300 540,303 650,310 760,333" fill="none" stroke="#00BCD4" stroke-width="2" />
      <text x="780" y="174" font-weight="bold" font-size="16">Mixed</text>
      <text x="780" y="222" font-weight="bold" font-size="16">White</text>
      <text x="780" y="274" font-weight="bold" font-size="16">Other</text>
      <text x="780" y="298" font-weight="bold" font-size="16">Chinese</text>
      <text x="780" y="322" font-weight="bold" font-size="16">Black</text>
      <text x="780" y="343" font-weight="bold" font-size="16">Asian</text>
  </svg>
</figure>

## Multiple line charts

Where the some or most of the lines on the chart would be very close together or overlapping, it is better to show the data as a series of smaller line charts instead.

These must all use the same vertical and horizontal scales.

Each of the smaller line charts should contain a single line only, and all lines should be the same colour (blue).

The label for the lines on each of the smaller charts should be given as a chart title centred above each of the charts.