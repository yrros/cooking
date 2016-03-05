package 'redis-server'

service 'redis-server' do
    supports :status => true
    action [:enable, :start]
end
