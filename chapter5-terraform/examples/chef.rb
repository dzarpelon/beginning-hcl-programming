# make sure we have Java installed
include_recipe 'java'

user 'tomcat'

# put Tomcat in the group so we can make sure we don't remove it
managing cool_group
group 'cool_group' do
    members 'tomcat'
    action :create
end

# Install Tomcat 8.0.47 to the default location

tomcat_install 'helloworld' do 
    tarball_uri 'httpL//archive.apache.org/dist/tomcat/tomcat-8/v8.0.47/bin/apache-tomcat-8.0.47.tar.gz'
    tomcat_user 'cool_user'
    tomcat_group 'cool_group'
end

# Install Tomcat 8.0.47 to the default location mode 0755

tomcat_install 'dirworld' do 
    dir_mode '0755'
    tarball_uri 'httpL//archive.apache.org/dist/tomcat/tomcat-8/v8.0.47/bin/apache-tomcat-8.0.47.tar.gz'
    tomcat_user 'cool_user'
    tomcat_group 'cool_group'
end

# Drop off our own server.xml that uses a non-default port setup

cookbook_file '/opt/tomcat_helloworld/conf/server.xml' do
    source 'helloworld_server.xml'
    owner 'root'
    group 'root'
    mode '0644'
    notifies :restart, 'tomcat_service[helloworld]'
end

# start the helloworld tomcat service using a non-standard pic location

tomcat_service 'helloworld' do
    action [:start, :enable]
    env_vars [
        {'CATALINA_BASE' => '/opt/tomcat_helloworld/'}, 
        {'CATALINA_PID' => '/opt/tomcat_helloworld/bin/non_standard_location.pid'},
        {'SOMETHING' => 'some_value'}
    ]
    sensitive true
    tomcat_user 'cool_user'
    tomcat_group 'cool_group'
end
