# STI 2018/2019 Rafael Henriques 2018311293
# Lisbon VPN Gateway - OpenVPN Server

# Lisbon VPN Gateway File:
	## Certificate: gw-vpn-lisbon.crt
	## Private Key: gw-vpn-lisbon.key
	## AC Certificate: cacert.pem
	## OpenVPN configuration file: server-lisbon.conf


# Start Lisbon OpenVPN Server
openvpn --config server-lisbon.conf
