---
layout: page
category: Data visualisation
title: Tables
---

Wherever we display a chart, we should also display the same data behind the chart in a table, so that:

* the data can be easily copied-and-pasted by users into a spreadsheet
* exact values for all data points can be seen (especially useful for line charts)
* the data can be ordered by the user to easily find the minimum and maximum values
* users using assistive technology such as screen-readers can access the data

There are also some cases where we display a table only:

* whenever the data is too complex to display in a chart
* where displaying the data in a chart would encourage users to infer misleading conclusions (eg because the difference between values is within the range of random chance)


## General design guidance

Numeric data within tables should be displayed right-aligned, using fixed-width numerals and a consistant number of decimal places (even if this means displaying “6.0” or “5.10”), to enable easier visual comparison.

<style>
  .simple-table-good { border-collapse: collapse; font-size: 16px; min-width: 300px;  }
  .simple-table-good td, th { border-bottom: 1px solid #bfc1c3; margin: 0; padding: 5px 0; }
</style>
<figure class="example good">
  <figcaption>Example table showing consistent numerals</figcaption>
  <table class="simple-table-good">
    <thead>
      <tr>
        <th style="text-align: left; font-weight: bold;">Ethnicity</th>
        <th style="text-align: right; font-weight: bold;">%</th>
      </tr>
    </thead>
    <tbody>
      <tr><th style="text-align: left;">All</th>  <td style="text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums;">73.2</td></tr>
      <tr><th style="text-align: left;">Asian</th><td style="text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums;">60.0</td></tr>
      <tr><th style="text-align: left;">Black</th><td style="text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums;">52.1</td></tr>
      <tr><th style="text-align: left;">Mixed</th><td style="text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums;">57.9</td></tr>
      <tr><th style="text-align: left;">White</th><td style="text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums;">71.1</td></tr>
      <tr><th style="text-align: left;">Other</th><td style="text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums;">58.0</td></tr>
    </tbody>
  </table>
</figure>

## Simple tables

Rows should contain the categories of ethnicities, columns should contain values.

Ethnicities should be listed in alphabetical order (not by population), with 'Other' and 'Unknown' categories appearing last.

Where possible an 'All' category should appear first.

Where data is available by detailed ethnicity categories, these should be grouped by the broad ethnicity category. Where possible these broad ethnicity category should also include aggregated values.

Missing data should use one of the following symbols:  N/A, !, - and ? with a key displaying any of these used in the table below.

Percentage signs can be omitted from the values where there are multiple columns.


## Regional tables

Where data is available by region (eg local authority or police force area), the regions should appear in rows, and the broad ethnicity categories in columns. An 'All' column should appear first.


## Time series tables

Where data is available over time (eg by month or by year), the time periods should appear in columns, and the ethnicity categories in rows.

If there are lots of time periods, then horizontal scrolling within the table may be required, even on desktop screens.


## Grouped tables


