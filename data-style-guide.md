---
layout: page
title: Data style guide
---

This guide includes:

* information for data analysts about the structure and content of measure pages
* an introduction to charts and tables, including when to use the different types of chart
* guidance on presenting data and using the chart and table builder in the publishing system (‘CMS’)

## Dimensions

Each measure page presents data that’s broken down by ethnicity and, in many cases, also broken down by other factors. These different breakdowns of the data are called the ‘dimensions’ of the measure.

Each dimension should:

* usually include a chart – except when it’s too complicated, or misleading, to present the data in a chart
* always include a table – the table presents the same information as the chart, and sometimes additional information when it’s available and useful (like sample sizes)

### Ordering dimensions

Dimensions should appear in the following order:

* by ethnicity (latest data)
* by ethnicity over time
* by ethnicity and sex/gender
* by ethnicity and age
* by ethnicity and area


Then by ethnicity and any other factor, such as:

* by ethnicity and socio-economic group
* by ethnicity and income
* by ethnicity and free school meals (FSM)
* by ethnicity and rank/grade

The first dimension should always be ‘by ethnicity’. After that, exceptions to the order can be made when it’s clear users will be more interested in certain dimensions (for example, the ‘rank/grade’ dimension for workforce measures). Make sure related groups of measures are consistent.

In some cases, additional dimensions correspond to different parts of the data. For example, one dimension could be the ‘percentage of pupils reaching the key stage 1 expected standard in reading’ and another could be the ‘percentage of pupils reaching the key stage 1 higher standard in reading’.
Put any dimensions that cover specific subsets at the end. (For example, the final dimension of [Employment](https://www.ethnicity-facts-figures.service.gov.uk/work-pay-and-benefits/employment/employment/latest) analyses a subset of the population: 16 to 24 year olds.)


### First dimension

Use the chart and table in the first dimension to break down the data by ethnicity for the most recent year of data.

Use an ‘over time’ analysis in the table for the first dimension if:

* a second dimension ‘over time’ would be very similar to the first dimension (for example, if there are only 2 years of data)
* the dimensions ‘by ethnicity’ and ‘by ethnicity over time’ are the only ones in a measure, as in [Patient experience of primary care - GP services](https://www.ethnicity-facts-figures.service.gov.uk/health/patient-experiences/patient-experience-of-primary-care-gp-services/latest)

## Types of chart

There are 5 types of chart:

* bar chart
* component bar chart
* multiple bar charts
* line chart
* multiple line charts

### Bar charts, component charts and multiple bar charts

Use bar charts, component charts and multiple bar charts for cross-sectional data, or for very short time series (2 or 3 years).

Use a bar chart if:

* the data is broken down by ethnicity only – show the values for both broad (‘parent’) and specific (‘child’) ethnic groups if they’re available (for example, see the chart in dimension 1 of [Reading attainments for children aged 5 to 7 (key stage 1)](https://www.ethnicity-facts-figures.service.gov.uk/education-skills-and-training/5-to-7-years-old/reading-attainments-for-children-aged-5-to-7-key-stage-1/latest))
* the data is broken down by ethnicity and a second factor, and the second factor has 3 groups or fewer – for example, see [Overweight children](https://www.ethnicity-facts-figures.service.gov.uk/health/preventing-illness/overweight-children/latest) (chart in dimension 1)

Use a component chart if:

* the percentages for all ethnic groups add up to 100%
* the data is broken down by ethnicity and an additional variable (for example, gender) and the percentages for either ethnicity or the additional variable add up to 100%

It’s best to use a component chart to display data divided into 2 categories. This allows users to easily compare values in the chart.

For charts showing data divided into 3 or 4 categories, you can use a component chart but it’s recommended that you use a multiple bar chart instead.

Use a multiple bar chart if:

* the data is broken down by ethnicity and an additional variable, and the additional variable has 4 groups or more – for example see [Internet use](https://www.ethnicity-facts-figures.service.gov.uk/culture-and-community/digital/internet-use/latest) (chart in dimension 2)

If you’re using a multiple bar chart to represent data broken down by ethnicity and an additional variable (for example, regions in the UK), there should be a chart for each category of the additional variable (instead of for each ethnic group). For example, if the data is broken down by ethnicity and regions/countries in the UK, there should be a chart for each region/country, so that all ethnic groups are shown in each chart.

There should be no more than 16 smaller charts, and no more than 10 bars within each chart.

### Line charts and multiple line charts

Use line charts and multiple line charts for most time series data.

A single line chart is preferable to a multiple line chart.

A multiple line chart should be used if a single line chart would be difficult to read because:

* there are more than 6 groups to compare
* the lines are very close together or overlapping

Multiple line charts must all have the same horizontal and vertical scales, and they should show a single line only. For example, see [Unemployment](https://www.ethnicity-facts-figures.service.gov.uk/work-pay-and-benefits/unemployment-and-economic-inactivity/unemployment/latest) (chart in dimension 3) and [Participation in apprenticeships](https://www.ethnicity-facts-figures.service.gov.uk/education-skills-and-training/apprenticeships-further-and-higher-education/participation-in-apprenticeships/latest) (chart in dimension 1).

The vertical axis should start from zero where the metric is a percentage.

When there are few lines to compare but they are very close together, they can be presented in a line chart (rather than multiple line charts) but changing the minimum value in the y axis. However, testing has shown this approach is less easily read. Read how this is done in the section ‘Chart values and labels’ in this guide.

## Ethnic categories

Ethnic categories should follow those listed in the [style guide A to Z](/a-z) where possible.

If departments have submitted different categories, amend them to match the [style guide A to Z](/a-z) if you can. For example, if the original dataset uses ‘White’ and ‘BME’, rename ‘BME’ to ‘Other’.

If the original dataset uses categories that don’t fit with any of the groupings in the [style guide A to Z](/a-z), don’t update them. (For example, [Internet Use](https://www.ethnicity-facts-figures.service.gov.uk/culture-and-community/digital/internet-use/latest) uses the following 4 ethnic categories: Asian, Black, White, Other (including Mixed)).

Make sure the ethnic categories used in a measure are the same across tables and charts. Don’t change the categories in data download files.

Use the label ‘Unknown’ for categories where the ethnicity isn’t known or stated.

### Broad and specific ethnic groups

When the data provided by departments includes specific ethnic categories (‘child’ categories), you should group them by broad categories (‘parent’ categories) so that charts and tables display both broad and specific categories. For example, see [Time spent living in current home](https://www.ethnicity-facts-figures.service.gov.uk/housing/owning-and-renting/time-spent-living-in-current-home/latest) (first dimension).

For example, you can group the specific categories ‘Black African’, ‘Black Caribbean’ and ‘Black other’ under the broad category ‘Black’.

Include statistics for both broad and specific groups where they’re provided by departments, but don’t include statistics for broad groups if the department’s statistics only include specific groups (that is, don’t manually create totals for broad groups).

### People with ‘unknown’ ethnicity

Statistics on ‘Ethnicity facts and figures’ should be consistent with those presented by departments.

Include information on the number of people with unknown ethnicity, and whether they are used in the calculations, in the section ‘What the data measures’. If no data on unknowns is provided, specify this in ‘The ethnic categories used in this data’.

Don’t include an analysis of people with unknown ethnicity in the commentary unless there’s an important reason for doing so (for example, an unusually high number of people of unknown ethnicity).

## Titles of dimensions, charts and tables

Within each dimension, there are separate titles for the dimension, chart and table. Titles will be checked by a content designer, but you should aim to keep them concise and in plain English.

Use ‘by ethnicity’ in titles (not ‘by ethnic group’), and don’t use a comma before ‘by ethnicity’ unless the title is confusing without it.

Titles shouldn’t include:

* the time period, unless the chart and table contain different time periods - this is because the time period is specified separately for each dimension in the ‘Time period’ field
* the age group the dataset refers to, unless it’s key for understanding the data covered in the dimension, for example ‘Reading attainments for children aged 5 to 7 by ethnicity’

For dimensions containing geographies, the dimension title should be ‘by ethnicity and area’ and the chart and table titles should have the specific geography (for example, ‘by ethnicity and local authority’). If the geography is ‘regions’, the table and chart title should say ‘area’ rather than ‘region’ to avoid confusion with the word ‘religion’. (User research showed ‘region’ can be misread as ‘religion’).


### Dimension title

Use the dimension title to describe what the dimension covers.

Follow the format:

‘(thing being analysed) by ethnicity (and further data cut)’ – for example, ‘Employment by ethnicity and gender’.

### Chart and table titles

Use table and chart titles to describe the specific data being presented.

Make sure the base or population is clearly identified. For example, say ‘Percentage of children who are obese…’, not ‘Percentage of obese children…’

Chart titles often follow the pattern:

‘(Percentage) of (thing being measured) by ethnicity (and further data cut)’ – for example, ‘Percentage of households who own their home by ethnicity and socio-economic group’.

Table titles often include numbers as well as percentages – for example, ‘Percentage and number of households who own their home by ethnicity and socio-economic group’.

If a table or chart shows rates, define them rather than use the word ‘rate’ – for example, ‘Arrests per 1,000 population by ethnicity and gender’.

Measure titles only refer to what’s being measured in what population (for example, ‘ADHD in adults’), while dimension titles provide more detail on the metric being used (for example, ‘Positive screenings for ADHD in adults’). Titles for charts and tables should be the most specific, so the data is unlikely to be misinterpreted (for example, ‘Percentage of adults who screened positive for ADHD in the past 6 months, by ethnicity and sex’).

## Tables

All dimensions must include a table. They give the user an alternative way to view the data, and can be used to include extra information (like sample sizes).

When creating tables in the table builder, select the ‘Standard ethnicity’ option in all relevant fields (such as ‘Rows’ and ‘Grouping’). If the field has a text box, enter ‘Ethnicity’.

### Which data to include

In addition to percentages or rates, tables can also include other data, such as sample sizes, to help the user understand the data presented.

As a general rule:

* in survey data, include the sample size or total number of respondents (denominator) in tables – make sure it’s clearly labelled in the header row of the table (for example, ‘All respondents’)
* in administrative data, include both the sample size (denominator) and the numerator

For standardised data (like age-standardised data for health measures), don’t include the sample size (denominator) or numerator. Instead only express results in terms of a percentage of the group being measured.

The data you include in a table will depend on:

* the type of data the measure is based on (survey or administrative data)
* the size of the table

There isn’t a minimum or maximum number of columns and rows a table should have, but you should:

* avoid overwhelming the user with figures in tables for dimensions cut by ethnicity and other factors
* preview your tables after you’ve built them – if they are too wide and the user has to scroll horizontally in order to view the full table, you should try to find other ways to present your data, like putting ethnic groups in columns instead of rows, or excluding the numerator or denominator if they’re not essential to understanding the data

### Columns and rows

Table rows should usually be labelled by ethnic group, while columns should be labelled by other factors for cutting the data (years, age groups, etc).

Only label columns by ethnic group if:

* the table is part of a ‘by area’ dimension, showing regions, local authorities or other geographic breakdowns
* the number of ethnic groups is smaller than the number of categories in the other factor, and putting ethnic groups in columns would mean less or no scrolling – for example, see [Statutory homelessness](https://www.ethnicity-facts-figures.service.gov.uk/housing/homelessness/statutory-homelessness/latest) where there are 10 categories for ‘year’ and 8 ethnic groups

Group columns in tables if they present different statistics for the same variable – for example, see [Self-inflicted deaths in prison custody](https://www.ethnicity-facts-figures.service.gov.uk/crime-justice-and-the-law/prison-and-custody-incidents/self-inflicted-deaths-in-prison-custody/latest).

### Header rows

Use the following labels in table header rows:

* ‘Ethnicity’ for ethnic groups – this should be used when you are presenting ethnic groups
* % (a percentage sign) where relevant – don’t use percentage signs alongside values within the table
* ‘Region’ or ‘Local authority’ for areas and regions – or the type of geography that corresponds to the data presented

Numbers in the table should include commas to separate thousands.

## Ordering data

Use the ‘ordering’ options in the content management system (CMS) to select the right order for categories in charts and tables. Use alphabetical ordering except when you’re ordering:

* ethnic groups
* socio-economic classifications
* UK regions
* workforce grades and military ranks

### Ethnic groups

Order the groups using the ‘parent-child’ option – this lists the ethnic groups alphabetically, with ‘All’ appearing first, and ‘Other’ and ‘Unknown’ at the end.

### Socio-economic classifications (NS-SEC)

Follow the standard order for that classification, with higher-level occupations appearing at the top and lower-level occupations at the end.

### UK regions and countries

Follow the North-South zig-zag pattern through England, with other UK countries at the end:


* North East
* North West
* Yorkshire and the Humber
* East Midlands
* West Midlands
* East of England
* London
* South East
* South West
* Wales
* Scotland
* Northern Ireland


### Workforce grades and military ranks

Put in grade order, from highest to lowest.

## Data

### Missing data

There should not be any empty cells in charts, tables and data downloads.

Use the following symbols where data is missing:

<ul class="symbols-list">
<li><kbd>!</kbd> data withheld for confidentiality</li>
<li><kbd>?</kbd> data not shown because small sample size makes it unreliable</li>
<li><kbd>-</kbd> data not collected [or otherwise unavailable]</li>
<li><kbd>N/A</kbd> data not applicable (eg no meaningful numerator)</li>
</ul>

The CMS automatically adds footnotes explaining what the symbols mean.

### Rounding

Depending on the quality of the data, round numbers in charts and tables to either:

* whole numbers
* 1 decimal place

As a rule of thumb, round good quality data to 1 decimal place, and poor quality data to whole numbers.

When you’ve decided which approach to take, make a note in the ‘Rounding’ section of the commentary template explaining what you did and why.

Rounding must be consistent across tables, charts and commentary in the same measure.

The data in download files should be unrounded.



### Chart values and labels

When creating charts in the chart builder, select the ‘Standard ethnicity’ group in all fields that refer to ethnicity categories (‘Primary grouping’, ‘Secondary grouping’, ‘Panels’, etc). If the field has a text box, enter ‘Ethnicity’.

If the values in the data are percentages, import the data as numbers rather than percentages in all data files (chart, table and download files).

The ‘Number format’ section in the CMS chart builder lets you choose between ‘Percentage’ and ‘Other’.

Choose ‘Percentage’ if you want the y axis to start at 0% and end at 100%.

Choose ‘Other’ if you want the y axis to have a range different than 0% to 100%. You should always have 0% as the minimum value, but some situations may call for a different maximum value: for example to avoid graph lines being too close together or if all the data ranges between 0% and 30%. The chart builder will automatically set 0% as the minimum value and an appropriate maximum value for the data presented, but if you want to select these values yourself, enter them in the ‘Minimum’ and ‘Maximum’ fields. Finally, if you select the ‘Other’ option, you must add the sign ‘%’ in the ‘Suffix’ field.

Don’t add any labels to charts because:

* the description for both axes should be included within the chart title (for example, ‘Percentage of…’)
* the values of the horizontal axis should also be evident from the grid line labels
* labels inside charts are added automatically by the CMS

### Download files

Download files contain all the data used in the charts and tables, as well as some additional data.

Use the following names for the variables within download files to make sure they’re consistent across different measures:

* measure
* ethnicity
* time
* gender or sex – use the same term provided by the department/in the source data
* age
* geography
* value
* numerator
* denominator
* upper bound
* lower bound

The names of the variables listed in the ‘Download description’ for each measure should be broadly the same as those in the download file – but say ‘confidence intervals’ rather than ‘upper bound’ and ‘lower bound’. Explain any other differences in the download description.

The variables listed depend on the content of the download file.


## Related guidance

* [Content style guide A to Z](./a-z)
* [Measure page guidance](./measure-page)
* [How we write about data](./how-we-write)


