# Install Redis server
package 'redis-server'

service 'redis-server' do
    supports :status => true
    action [:enable, :start]
end

#Put some data in Redis to test with

# Install PHP

# Install Apache

# configure the Firewall
# going to use the ufw community cookbook for this

# Pull the Page index.html to be the homepage

# Test the response on the webpage matches the desired input "IT WORKS"

