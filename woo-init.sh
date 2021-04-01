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
    echo "Github updater has been installed... next..."

else
    echo "There is no WordPress installed. I will install it"
    exit 1
fi
