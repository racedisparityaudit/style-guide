# Ethnicity facts and figures style guide

This is the code and content for the [Style guide](https://racedisparityaudit.github.io/style-guide/) for the Ethnicity facts and figures website.

## Editing the content

The content for this website is saved as Markdown files.

The templates are are saved within [_layouts](_layouts), and use the [Liquid](https://shopify.github.io/liquid/) templating language.

## Previewing the website locally.

The website is served by GitHub using [Jekyll](https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/). You can also preview this locally by following these steps:

* [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/) (preferably the latest version)
* Install bundler, if not already installed, by running `gem install bundler`
* Run `bundle install` to install the required dependencies.
* Run `bundle exec jekyll serve` to run the website locally. You can then view it at `http://localhost:4000/`
