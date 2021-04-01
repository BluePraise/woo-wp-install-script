#cd ~/the/script/folder
#chmod +x ./woo-init.sh

#TODO Ask the name for the project directory and then make the directory
# PROJECT DIRECTORY
DIR="$(pwd)"
HASWP="wp-admin"
PLUGINDIR="wp-content/plugins"
THEMEDIR=""
## COMPUTER TALKS IN YELLOW
YELLOW=`tput setaf 3`


wp_install () 
{ 
    wp core download --path=$1;
    cd $1;
    read -p 'name the database:' dbname;
    wp config create --dbname=$dbname --dbuser=root --dbpass=awoods --dbhost=localhost;
    wp db create;
    wp core install --prompt
}

# IF WORDPRESS EXISTS (IT CHECKS IT BY SIMPLY CHECKING THE FOLDERS)
if [ -d "$HASWP" ]; then
    echo ${DIR} 
    echo "${YELLOW}This folder has WordPress installed. Continuiing with installing plugins and themes..."
    wp plugin install --activate https://github.com/afragen/github-updater/archive/master.zip
    echo "${YELLOW}Github updater has been installed... next..."
    wp plugin --activate install advanced-custom-fields
    echo "${YELLOW}ACF Has been installed... next..."
    wp plugin --activate install woocommerce
    echo "${YELLOW}Woo has been installed... next, let's start installing Storefront..."
    wp theme install storefront --activate
    echo "${YELLOW}Storefront is installed and activated... next, let's start uninstalling some things..."
    wp plugin --deactivate uninstall hello
    echo "${YELLOW}Hello has been uninstalled"
    wp plugin --deactivate uninstall akismet
    echo "${YELLOW}Akismet has been uninstalled"
    wp theme --deactivate uninstall twentynineteen twentytwenty twentytwentyone
else
    echo "There is no WordPress installed. I will install it"
    exit 1
fi
