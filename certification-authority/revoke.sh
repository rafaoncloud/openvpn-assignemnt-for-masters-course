# STI 2018/2019 Rafael Henriques 2018311293
# Revoke certificate - Certification Authority (CA)

# Required files
	## CA private key: cakey.pem
	## CA self-signed certificate: cacert.pem

# Example
# sh revoke.sh certs/road-warrior.crt

# Revoke the given certificate
openssl ca -revoke "${1}" -keyfile /etc/pki/CA/private/cakey.pem -cert /etc/pki/CA/cacert.pem

# Generate a new CRL
openssl ca -gencrl -keyfile private/cakey.pem -cert cacert.pem -out crl.pem

# For unrevoke the certificate, open the index.txt
# Change the R -> V and clean the second indetification (3rd column value)
# Note: The fields are separated by TABS not SPACE
# $ nano index.txt
# Then, generate the new CRL
# openssl ca -gencrl -keyfile private/cakey.pem -cert cacert.pem -out crl.pem
