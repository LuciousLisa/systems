#!/bin/sh

# genssl.sh - Generates all required certificate files in one go. Written in
# 2014 by Patrick "Argure" Godschalk <patrick.godschalk@piratenpartij.nl>.
#
# To the extent possible under law, the author has dedicated all copyright and
# related and neighbouring rights to this software to the public domain
# worldwide. This software is distributed without any warranty.
#
# You may view the CC0 Public Domain Dedication at
# <http://creativecommons.org/publicdomain/zero/1.0/>.
#
# ---
#
# Put this file in /usr/local/bin, name it "genssl" and run
# $ chmod a+x genssl
#
# genssl takes and requires one parameter: the certificate common name.

csr_path="/etc/ssl/csr"
dh_path="/etc/ssl/dh"
ecdh_path="/etc/ssl/ecdh"
pem_path="/etc/ssl/certs"
key_path="/etc/ssl/private"

mkdir "${csr_path}"
mkdir "${dh_path}"
mkdir "${ecdh_path}"
wget https://www.startssl.com/certs/class2/sha2/pem/sub.class2.server.sha2.ca.pem -P "${pem_path}"

echo "Generating private key and CSR..."
openssl req -new -newkey rsa:4096 -nodes -sha512 -out "${csr_path}"/"$1".csr \
	-keyout "${key_path}"/"$1".key -subj \
	"/C=NL/ST=Noord-Holland/L=Amsterdam/O=Piratenpartij/CN='$1'"

echo "Self-signing certificate..."
openssl x509 -req -sha512 -days 365 -in "${csr_path}"/"$1".csr -signkey \
	"${key_path}"/"$1".key -out "${pem_path}"/"$1".pem

echo "Generating Diffie-Hellman file for secure SSL/TLS negotiation..."
openssl dhparam 4096 -out "${dh_path}"/"$1".pem

echo "Generating EC curve parameters..."
openssl ecparam -name secp384r1 -out "${ecdh_path}"/"$1".pem

echo "Concatenating DH and ECDH parameters to certificate..."
cat "${pem_path}"/sub.class2.server.sha2.ca.pem >> "${pem_path}"/"$1".pem
cat "${dh_path}"/"$1".pem >> "${pem_path}"/"$1".pem
cat "${ecdh_path}"/"$1".pem >> "${pem_path}"/"$1".pem


cat <<EOF

All done!

If this certificate needs to be signed by the certificate authority, mail the
below certificate signing request to the current representative with the CA,
and overwrite the contents of the certificate section (not the DH or ECDH
params) at "${pem_path}"/"$1".pem

Have fun!
EOF

cat "${csr_path}"/$1.csr
