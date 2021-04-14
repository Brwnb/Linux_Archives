# Scripts that show ip after linux boot.
# This script was tested in a CentOS 8 and Debian 10.
# It's important set the execution permission in this file with command "chmod +x show_ip_after_boot.sh".
# Other point is that, this file need to stay in directory "/etc/profile.d/"

# Filtering ip
variable=$(ip a show | grep 'inet ' | sed '1d' | cut -d" " -f6)

# set the values in /etc/issue
echo "ip $variable" > /etc/issue
