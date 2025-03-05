# Update the software
sudo apt update
sudo apt install default-JDK
# Create the user
sudo groupadd tomcat
# Add user to group
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
# Move on the /tmp folder
cd /tmp
# Download the Tomcat file
curl -O https://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz
# Install Tomcat on the /opt folder
sudo mkdir /opt/tomcat
sudo tart xzvf apache-tomcat-9*tar.gz -C /opt/tomcat /strip-components-1