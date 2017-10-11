sudo route del -net 10.238.4.0 netmask 255.255.255.0 dev tun1
sudo bsvpndown
sudo route add -net 10.238.4.0 netmask 255.255.255.0 dev vboxnet1
sudo route add -net 10.240.68.0 netmask 255.255.255.0 dev vboxnet2
