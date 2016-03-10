# cooking

We're cooking up some Redis in this cookbook on an Ubuntu system (14.04)
Chef practices being put to use are:
- Attribute Files (for firewall configuration)
- Using Supermarket Cookbooks ("Firewall" and as we're using Ubuntu it uses the cookbook 'UFW')
- Bash Scripts (to add content to Redis)
- Templates (used to put Key Value into Redis)
- Calling Cookbooks using include_recipe (Firewall)
- Unit Testing (ChefSpec using Rspec command), This is to check that Chef will do what you expect it to do.
  10th March 2016 - This currently has a compilation problem and is at this time unresolved.
- Implementation testing (ServerSpec).
  10th March 2016 - There's currently an issue with the Firewall check returning an error, it seems to be a problem with the check port.

Dev System was configured using the technologies:
Chef Kitchen
Vagrant
ServerSpec
ChefSpec
Rspec
Rake
Bundler

Outstanding tasks:
Functional Testing of Redis:
  - Delete the Redis_out file before running the test
  - Get a bash script to pull the details from Redis and put that into a file.
  - pull data from Redis to Redis_out text file

Check that Firewall is set-up correctly:
  - Learn how to check the ports of a Vagrant machine from the Host System to see if they conform to expectation, this will show if the failing ServerSpec test is working or not.
  - Lockdown the un-needed ports on the VM, the cookbook opens ports, it does not close off the open by default ports.

# cooking
