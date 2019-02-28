# New users
sudo adduser username

# Grant the new user sudo privileges
sudo visudo
# username ALL=(ALL:ALL) ALL
# add this line ^^

# change to that user
su - username

# change server name
# sudo hostname new-name
# or 
# edit /etc/hostname
# add  127.0.1.1  new-name to /etc/hosts 
# requires reboot in both cases

# system update
sudo apt-get update
sudo apt-get install -y build-essential # just to make sure
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

# configs
# keep ssh sessions alive
# edit /etc/ssh/ssh_config
# add the line:
# ServerAliveInterval 120
# under Host *
sudo service ssh restart

# perl always complains if localle is not set.
# add these lines to /etc/environment:
# export LANGUAGE=en_US.UTF-8
# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8
# export LC_TYPE=en_US.UTF-8

# basics
sudo apt-get install -y git github-backup cmake
sudo apt-get install -y awscli
complete -C aws_completer aws
