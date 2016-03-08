#Firewall config
default['firewall']['allow_ssh'] = true
default['firewall']['firewalld']['permanent'] = true
default['cooking']['open_ports'] = 6379

#MOTD Content testing
default['cooking']['motd-message'] = "hello world - testing TDD"
