# STI 2018/2019 Rafael Henriques 2018311293
# Start OCSP Responser Service - Using OpenSSL

openssl ocsp -index /etc/pki/CA/index.txt -port 81 -rsigner /etc/pki/CA/cacert.pem -rkey /etc/pki/CA/private/cakey.pem -CA /etc/pki/CA/cacert.pem -text -out /etc/pki/CA/log.txt

