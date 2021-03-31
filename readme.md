# A WP Theme, Plugin and WooCommerce installer
I wrote this to speed up my install process locally. I do not like Bedrock or Sage from Roots.io.
This composer is to rapidly install the necessary plugins and theme for a project that requires WooCommerce.
Basically it fetches and installs plugins. Because it is based on composer you can also updates the plugins. 

## Where does it fetch these packages from?
Here: [wpackagist](https://wpackagist.org/)

## Recommended usage
I recommend using WP CLI to install WordPress. After that run this composer file.
Don't forget to make and map the database. 

## Installation Commands
To install WordPress `wp code download`
To install the plugins and themes `composer.phar update`

## Be Aware
This theme only manages themes and plugins in this project.
It does not manage dependencies, it does not take care or deployment.

