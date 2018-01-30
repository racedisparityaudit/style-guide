# Ethnicity facts and figures style guide

This is the code and content for the [Style guide](https://guide.ethnicity-facts-figures.service.gov.uk/) for the Ethnicity facts and figures website.

## Editing the content

The content for this website is saved as Markdown files.

The templates are are saved within [_layouts](_layouts), and use the [Liquid](https://shopify.github.io/liquid/) templating language.

## Previewing the website locally.

The website built using [Jekyll](https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/). You can also preview this locally by following these steps:

* [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/) (preferably the latest version)
* Install bundler, if not already installed, by running `gem install bundler`
* Run `bundle install` to install the required dependencies.
* Run `bundle exec jekyll serve` to run the website locally. You can then view it at `http://localhost:4000/`


## Deployment

The website is deployed to an AWS S3 bucket using [the S3 website gem](https://github.com/laurilehmijoki/s3_website)

To deploy, checkout this repo and create the deployment configuration by running this command

    s3_website cfg create

That will create the file: "s3_website.yml". Fill in at least the following values:


    s3_id: [your aws access key id]
    s3_secret: [your aws secret access key]
    s3_bucket: guide-ethnicity-facts-and-figures

The bucket already exists in RDU's AWS account.

You can also uncomment the following from the s3_website.yml

    max_age:
      "assets/*": 6000
      "*": 300

    gzip:
      - .html
      - .css


There is a AWS Cloudfront distribution in front of the S3 origin and it is currently configured to use origin
cache headers.


Once done you can build the static html output:

  jekyll build

and then deploy to AWS:

  s3_website push

If/when there are updates to the repo, pull the updates, build html and push again.

The website is served at: https://guide.ethnicity-facts-figures.service.gov.uk


