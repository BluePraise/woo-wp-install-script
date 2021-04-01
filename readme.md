# A WP Theme, Plugin and WooCommerce installer
I wrote this to speed up my install process locally. I do not like Bedrock or Sage from Roots.io.
This composer is to rapidly install the necessary plugins and theme for a project that requires WooCommerce.
Basically it fetches and installs plugins. Because it is based on composer you can also updates the plugins. 

## So what are you looking at?
Do not use composer.json or wp-composer.json just yet. I haven't figured out how to use that properly.
woo-init.sh however does work. It's a shall script that fetches the plugins I need to get my workflow going.

## Where does it fetch these packages from?
Here: [wpackagist](https://wpackagist.org/) and GitHub.

## Recommended usage for woo-init.sh
#### if you have WordPress installed
woo-init checks if you have WordPress installed by looking for the wp-admin folder in your current directory.
It then installs and ACTIVATES github-updater, woocommerce and storefront theme. (I always make childthemes based on Storefront)
#### if you DO NOT have WordPress installed
Right now it does nothing but install through WP CLI
Don't forget to make and map the database. 

