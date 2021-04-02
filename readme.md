# A WP Theme, Plugin and WooCommerce installer
I wrote this to speed up my install process locally. I do not like Bedrock or Sage from Roots.io.
This composer is to rapidly install the necessary plugins and theme for a project that requires WooCommerce.
Basically it fetches and installs plugins and themes. It makes use of WP CLI, Regular Bash Commands and later I will install some git commands too.

## So what are you looking at?
Do not use composer.json or wp-composer.json just yet. I haven't figured out how to use that properly.
woo-init.sh however does work. It's a Shell script that fetches the plugins I need to get my workflow going.

## Where does it fetch these packages from?
Here: WP CLI Plugins and Themes Repository, [wpackagist](https://wpackagist.org/) and GitHub.

## Recommended usage for woo-init.sh
#### if you have WordPress installed
woo-init checks if you have WordPress installed by looking for the wp-admin folder in your current directory.
It then installs and ACTIVATES github-updater, woocommerce and storefront theme. (I always make childthemes based on Storefront)
#### if you DO NOT have WordPress installed
Right now it does nothing but install through WP CLI
Don't forget to make and map the database. 

## What's still coming...
- Deactivate and Remove unwanted themes v0.2.0
- Download my wp blank theme folder from github and V0.2.0
- Rename blank theme folder from to provided project name V0.2.0
- Download my woo blank theme folder into the themes directory v0.3.0
- init git and do an initial commit. v0.3.0
- Automatically opens the browser window with the correct URL

## Release and Fix Log
- Scripty now makes a theme directory name for me
- Turned off the theme deactivation. Scripty doesn't understand that yet.
- Added a dirty remove for twenty* themes
- Not sure how to create db in WP CLI
- Moved some scripts into functions
