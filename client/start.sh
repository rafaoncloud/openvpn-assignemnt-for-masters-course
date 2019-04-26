# STI 2018/2019 Rafael Henriques 2018311293
# Start OpenVPN Client using a given configuration file

# The is client made by the following files:

## Certification Authority (CA) Certificate: cacert.pem
## Client private key: road-warrior.key
## Client certificate issued by the CA: road-warrior.crt

## Client OpenVPN configuration file: client.conf

# Test Cases: 

## Access the Certification Authority via SSH (A dedicated machine 
## in the internal network (Coimbra))
## The packets go through the vpn tunnel until reach the Coimbra
## VPN Gateway using the 1194 port, the default port of OpenVPN
## Then, they go unecrypted until the CA machine
## The results was gathered using the wireshark on the internet 
## interface (i.e., ens33, not the tun0)
## In the tun0 goes the actual data

### ssh 192.168.0.253

#---------------

# Start Service 
openvpn --config client.conf

# We left it run and used another terminal to make the experiment
