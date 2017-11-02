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

All tables should have a title.

Numeric data within tables should be displayed right-aligned, using fixed-width numerals and a consistant number of decimal places (even if this means displaying “6.0” or “5.10”), to enable easier visual comparison.

Commas should be used to separate thousands.

Percentage signs can be omitted from the values where there are multiple columns.


<style>
  .simple-table-good { border-collapse: collapse; font-size: 16px; min-width: 500px; margin-top: 20px; margin-bottom: 20px;  }
  .simple-table-good td, th { border-bottom: 1px solid #bfc1c3; margin: 0; padding: 5px 0; }
  .simple-table-good caption { text-align: left; font-weight: bold; margin-bottom: 10px; font-size: 19px; }
  .simple-table-good th { text-align: left; }
  .simple-table-good td { text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums; }
  .simple-table-good thead th { font-weight: bold }
  .simple-table-good thead th.data { text-align: right; }
</style>
<figure class="example good">
  <figcaption>Example table showing consistent decimals and numeral spacing</figcaption>
  <table class="simple-table-good">
    <caption>Percentage of adults with a driving licence by ethnicity</caption>
    <thead>
      <tr>
        <th width="40%">Ethnicity</th>
        <th width="25%" class="data">%</th>
        <th width="35%" class="data">Number surveyed</th>
      </tr>
    </thead>
    <tbody>
      <tr><th>All</th><td>73.2</td><td>73,877</td></tr>
      <tr><th>Asian</th><td>60.0</td><td>3,111</td></tr>
      <tr><th>Black</th><td>52.1</td><td>1,832</td></tr>
      <tr><th>Mixed</th><td>57.9</td><td>655</td></tr>
      <tr><th>White</th><td>71.1</td><td>67,070</td></tr>
      <tr><th>Other</th><td>58.0</td><td>776</td></tr>
    </tbody>
  </table>
</figure>

<style>
  .simple-table-bad { border-collapse: collapse; font-size: 16px; min-width: 500px; margin-top: 20px; margin-bottom: 20px;  }
  .simple-table-bad td, th { border-bottom: 1px solid #bfc1c3; margin: 0; padding: 5px 0; }
  .simple-table-bad caption { text-align: left; font-weight: bold; margin-bottom: 10px; font-size: 19px; }
  .simple-table-bad th { text-align: left; }
  .simple-table-bad td { text-align: right; }
  .simple-table-bad thead th { font-weight: bold }
  .simple-table-bad thead th.data { text-align: right; }
</style>
<figure class="example bad">
  <figcaption>Example table showing inconsistent decimals and numeral spacing</figcaption>
  <table class="simple-table-bad">
    <caption>Percentage of adults with a driving licence by ethnicity</caption>
    <thead>
      <tr>
        <th width="40%">Ethnicity</th>
        <th width="25%" class="data">%</th>
        <th width="35%" class="data">Number surveyed</th>
      </tr>
    </thead>
    <tbody>
      <tr><th>All</th><td>73.2</td><td>73,877</td></tr>
      <tr><th>Asian</th><td>60</td><td>3,111</td></tr>
      <tr><th>Black</th><td>52.1</td><td>1,832</td></tr>
      <tr><th>Mixed</th><td>57.9</td><td>655</td></tr>
      <tr><th>White</th><td>71.1</td><td>67,070</td></tr>
      <tr><th>Other</th><td>58</td><td>776</td></tr>
    </tbody>
  </table>
</figure>

### Missing and non-applicable values

No cells within a table should be empty.

If some values within a table aren’t applicable, then <span class="not-applicable">N/A<sup>*</sup></span> should be included instead. For example, when comparing numbered recorded by ethnicity to the populations of people with that ethnicity and an row is included showing those whose ethnicity was 'Unknown'.


Missing data should use one of the following symbols:

<ul class="no-bullets spaced-out">
  <li><span class="explanation"><span class="missing-data confidential"></span></span>&nbsp;&nbsp; where data is withheld for confidentiality</li>
  <li><span class="explanation"><span class="missing-data sample-too-small"></span></span>&nbsp;&nbsp;  where a small sample size makes the data unreliable</li>
  <li><span class="explanation"><span class="missing-data not-collected"></span></span>&nbsp;&nbsp; where data was not collected or is otherwise unavailable</li>
</ul>


A key should be included within the table footer to explain any symbols used.

## Simple tables

Rows should contain the categories of ethnicities, columns should contain values.

Ethnicities should be listed in alphabetical order (not by population), with 'Other' and 'Unknown' categories appearing last.

Where possible an 'All' category should appear first.

Where data is available by detailed ethnicity categories, these should be grouped by the broad ethnicity category. Where possible these broad ethnicity category should also include aggregated values.


## Regional tables

Where data is available by region (eg local authority or police force area), the regions should appear in rows, and the broad ethnicity categories in columns. An 'All' column should appear first.


## Time series tables

Where data is available over time (eg by month or by year), the time periods should appear in columns, and the ethnicity categories in rows.

If there are lots of time periods, then horizontal scrolling within the table may be required, even on desktop screens.


## Grouped tables


