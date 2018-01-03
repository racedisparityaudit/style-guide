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

Numeric data within tables should be displayed right-aligned, using fixed-width numerals and a consistant number of decimal places (even if this means displaying “6.0” or “5.10”). This makes it easier to compare the numbers.

Commas should be used to separate thousands.

Percentage signs should be omitted from the values.


<style>
  .simple-table-good { border-collapse: collapse; font-size: 16px; min-width: 500px; margin-top: 20px; margin-bottom: 20px;  }
  .simple-table-good td, th { border-bottom: 1px solid #bfc1c3; margin: 0; padding: 5px 5px; }
  .simple-table-good td:first-child, th:first-child { padding-left: 0; }
  .simple-table-good td:last-child, th:last-child { padding-right: 0; }
  .simple-table-good caption { text-align: left; font-weight: bold; margin-bottom: 10px; font-size: 19px; }
  .simple-table-good th { text-align: left; }
  .simple-table-good td { text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums; }
  .simple-table-good thead th { font-weight: bold }
  .simple-table-good th.data { text-align: right; }
</style>
<figure class="example good">
  <figcaption>Example table showing consistent decimals and numeral spacing</figcaption>
  <table class="simple-table-good">
    <caption>Percentage of adults with a driving licence by ethnicity</caption>
    <thead>
      <tr>
        <th width="40%">Ethnicity</th>
        <th width="25%" class="data">Percentage</th>
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
  .simple-table-bad td, th { border-bottom: 1px solid #bfc1c3; margin: 0; padding: 5px; }
  .simple-table-bad td:first-child, th:first-child { padding-left: 0; }
  .simple-table-bad td:last-child, th:last-child { padding-right: 0; }
  .simple-table-bad caption { text-align: left; font-weight: bold; margin-bottom: 10px; font-size: 19px; }
  .simple-table-bad th { text-align: left; }
  .simple-table-bad td { text-align: right; }
  .simple-table-bad thead th { font-weight: bold }
  .simple-table-bad th.data { text-align: right; }
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

### Ordering

Columns and rows should generally be ordered alphabetically (for text) or chronologically (for time periods), with a few exceptions:

* An 'All' category should be ordered first
* For ethnicities, 'Other' and 'Unknown' should be ordered last.
* [Socio-economic classifications](https://www.ons.gov.uk/methodology/classificationsandstandards/otherclassifications/thenationalstatisticssocioeconomicclassificationnssecrebasedonsoc2010) should follow the order from that classification (from Higher occupations to Lower occupations)
* UK regions (eg South West) should follow the North-South zig-zag pattern:
  1. North East
  2. North West
  3. Yorkshire and the Humber
  4. East Midlands
  5. West Midlands
  6. East of England
  7. London, South East
  8. South West
  9. Wales
  10. Scotland
  11. Northern Ireland
* Military ranks and other workforce grades should be in grade order (highest to lowest)

### Fixed column headers

To avoid users losing the description of a column when scrolling down on tall tables, fixed column headings should be used.

## Simple tables

Rows should contain the categories of ethnicities, columns should contain values.

Ethnicities should be listed in alphabetical order (not by population), with 'Other' and 'Unknown' categories appearing last.

Where possible an 'All' category should appear first.

Where data is available by detailed ethnicity categories, these should be grouped by the broad ethnicity category. Where possible these broad ethnicity category should also include aggregated values.

<style>
  .detailed-ethnicity-table { border-collapse: collapse; max-width: 600px; margin-top: 20px; margin-bottom: 20px;  }
  .detailed-ethnicity-table td,
  .detailed-ethnicity-table th { border-bottom: 1px solid #bfc1c3; font-size: 16px; margin: 0; padding: 5px 5px; }
  .detailed-ethnicity-table caption { text-align: left; font-weight: bold; margin-bottom: 10px; font-size: 19px; }
  .detailed-ethnicity-table td:first-child, th:first-child { padding-left: 0; }
  .detailed-ethnicity-table td:last-child, th:last-child { padding-right: 0; }
  .detailed-ethnicity-table th { text-align: left; }
  .detailed-ethnicity-table td { text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums; }
  .detailed-ethnicity-table thead th { font-weight: bold }
  .detailed-ethnicity-table thead th.data { text-align: right; }
  .detailed-ethnicity-table tbody th { padding-left: 15px; }
  .detailed-ethnicity-table tbody th[scope=rowgroup] { font-weight: bold; padding-left: 0; }
</style>
<figure class="example good">
  <figcaption>Example table showing consistent decimals and numeral spacing</figcaption>
  <table class="detailed-ethnicity-table">
    <caption>Percentage of adults who had confidence in the police by ethnicity</caption>
    <thead>
      <tr>
        <th width="40%">Ethnicity</th>
        <th width="25%" class="data">%</th>
        <th width="35%" class="data">Number surveyed</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="rowgroup">All</th>
        <td data-sort-value="76">76</td>
        <td data-sort-value="35075">35,075</td>
      </tr>
    </tbody>
    <tbody>
      <tr>
        <th scope="rowgroup">Asian</th>
        <td data-sort-value="79">79</td>
        <td data-sort-value="1805">1,805</td>
      </tr>
      <tr>
        <th scope="row">Bangladeshi</th>
        <td data-sort-value="71">71</td>
        <td data-sort-value="137">137</td>
      </tr>
      <tr>
        <th scope="row">Chinese</th>
        <td data-sort-value="77">77</td>
        <td data-sort-value="168">168</td>
      </tr>
      <tr>
        <th scope="row">Indian</th>
        <td data-sort-value="83">83</td>
        <td data-sort-value="759">759</td>
      </tr>
      <tr>
        <th scope="row">Pakistani</th>
        <td data-sort-value="72">72</td>
        <td data-sort-value="397">397</td>
      </tr>
      <tr>
        <th scope="row">Asian other</th>
        <td data-sort-value="82">82</td>
        <td data-sort-value="344">344</td>
      </tr>
    </tbody>
    <tbody>
      <tr>
        <th scope="rowgroup">Black</th>
        <td data-sort-value="70">70</td>
        <td data-sort-value="946">946</td>
      </tr>
      <tr>
        <th scope="row">Black African</th>
        <td data-sort-value="75">75</td>
        <td data-sort-value="555">555</td>
      </tr>
      <tr>
        <th scope="row">Black Caribbean</th>
        <td data-sort-value="62">62</td>
        <td data-sort-value="346">346</td>
      </tr>
      <tr>
        <th scope="row">Black other</th>
        <td data-sort-value="0"><span class="missing-data sample-too-small"></span><span class="visually-hidden">withheld because a small sample size makes it unreliable</span></td>
        <td data-sort-value="45">45</td>
      </tr>
    </tbody>
    <tbody>
      <tr>
        <th scope="rowgroup">Mixed</th>
        <td data-sort-value="72">72</td>
        <td data-sort-value="336">336</td>
      </tr>
      <tr>
        <th scope="row">Mixed White/Asian</th>
        <td data-sort-value="75">75</td>
        <td data-sort-value="80">80</td>
      </tr>
      <tr>
        <th scope="row">Mixed White/Black African</th>
        <td data-sort-value="0"><span class="missing-data sample-too-small"></span><span class="visually-hidden">withheld because a small sample size makes it unreliable</span></td>
        <td data-sort-value="46">46</td>
      </tr>
      <tr>
        <th scope="row">Mixed White/Black Caribbean</th>
        <td data-sort-value="69">69</td>
        <td data-sort-value="118">118</td>
      </tr>
      <tr>
        <th scope="row">Mixed other</th>
        <td data-sort-value="74">74</td>
        <td data-sort-value="92">92</td>
      </tr>
    </tbody>
    <tbody>
      <tr>
        <th scope="rowgroup">White</th>
        <td data-sort-value="76">76</td>
        <td data-sort-value="31725">31,725</td>
      </tr>
      <tr>
        <th scope="row">White British</th>
        <td data-sort-value="75">75</td>
        <td data-sort-value="29836">29,836</td>
      </tr>
      <tr>
        <th scope="row">White Irish</th>
        <td data-sort-value="81">81</td>
        <td data-sort-value="319">319</td>
      </tr>
      <tr>
        <th scope="row">White Gypsy/Roma</th>
        <td data-sort-value="0"><span class="missing-data sample-too-small"></span><span class="visually-hidden">withheld because a small sample size makes it unreliable</span></td>
        <td data-sort-value="12">12</td>
      </tr>
      <tr>
        <th scope="row">White other</th>
        <td data-sort-value="81">81</td>
        <td data-sort-value="1558">1,558</td>
      </tr>
    </tbody>
    <tbody>
      <tr>
        <th scope="rowgroup">Other</th>
        <td data-sort-value="77">77</td>
        <td data-sort-value="232">232</td>
      </tr>
      <tr>
        <th scope="row">Arab</th>
        <td data-sort-value="79">79</td>
        <td data-sort-value="88">88</td>
      </tr>
      <tr>
        <th scope="row">Any other</th>
        <td data-sort-value="76">76</td>
        <td data-sort-value="144">144</td>
      </tr>
    </tbody>
  </table>
  <p class="missing-data-explanation"><span class="explanation"><span class="missing-data sample-too-small"></span> Data withheld because a small sample size makes it unreliable</span></p>
</figure>

## Regional tables

Where data is available by region (eg local authority or police force area), the regions should appear in rows, and the broad ethnicity categories in columns. An 'All' column should appear first.


## Time series tables

Where data is available over time (eg by month or by year), the time periods should appear in columns, and the ethnicity categories in rows.

If there are lots of time periods, then horizontal scrolling within the table may be required, even on desktop screens.


## Grouped tables

Where the data has a small number of secondary groups, these can be compared using column groups:

<style>
  .grouped-columns-table { border-collapse: collapse; width: 100%; margin-top: 20px; margin-bottom: 20px;  }
  .grouped-columns-table td,
  .grouped-columns-table th { border-bottom: 1px solid #bfc1c3; font-size: 16px; margin: 0; padding: 5px 10px; }
  .grouped-columns-table caption { text-align: left; font-weight: bold; margin-bottom: 10px; font-size: 19px; }
  .grouped-columns-table th { text-align: left; }
  .grouped-columns-table td { text-align: right; font-family: 'ntatabularnumbers', 'Helvetica', Arial, sans-serif; font-variant-numeric: tabular-nums; }
  .grouped-columns-table thead th { font-weight: bold }
  .grouped-columns-table thead .secondary th { font-weight: normal; vertical-align: top; }
  .grouped-columns-table thead th.data { text-align: right; }
  .grouped-columns-table thead tr:first-child th { border-bottom-width: 0; }
  .grouped-columns-table tr th:first-child { font-weight: bold; }
  .grouped-columns-table .line { border-right: 1px solid #bfc1c3; }
</style>
<figure class="example good">
  <figcaption>Example table showing grouped columns</figcaption>
  <table class="grouped-columns-table">
    <caption>Prisoner assailants, victims and fighters by ethnicity</caption>
    <thead>
      <tr>
        <th class="line"></th>
        <th class="line" colspan="2">Assailant</th>
        <th class="line" colspan="2">Fighter</th>
        <th colspan="2">Victim</th>
      </tr>
      <tr class="secondary">
        <th class="line">Ethnicity</th>
        <th class="data">Number</th>
        <th class="data line">Incidents per 1000 prisoners</th>
        <th class="data">Number</th>
        <th class="data line">Incidents per 1000 prisoners</th>
        <th class="data">Number</th>
        <th class="data">Incidents per 1000 prisoners</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th class="line">Asian</th>
        <td>810</td>
        <td class="line">117.9</td>
        <td>858</td>
        <td class="line">124.9</td>
        <td>769</td>
        <td>111.9</td>
      </tr>
      <tr>
        <th class="line">Black</th>
        <td>3,017</td>
        <td class="line">285.3</td>
        <td>2,817</td>
        <td class="line">266.4</td>
        <td>1,335</td>
        <td>126.3</td>
      </tr>
      <tr>
        <th class="line">Mixed</th>
        <td>1,177</td>
        <td class="line">335.5</td>
        <td>980</td>
        <td class="line">279.3</td>
        <td>475</td>
        <td>135.4</td>
      </tr>
      <tr>
        <th class="line">White</th>
        <td>8,026</td>
        <td class="line">127.0</td>
        <td>7,905</td>
        <td class="line">125.1</td>
        <td>6,761</td>
        <td>107.0</td>
      </tr>
      <tr>
        <th class="line">Chinese&nbsp;and&nbsp;other</th>
        <td>160</td>
        <td class="line">163.1</td>
        <td>191</td>
        <td class="line">194.7</td>
        <td>128</td>
        <td>130.5</td>
      </tr>
    </tbody>
  </table>
</figure>

