#!/bin/bash
KEY=`jq -r .'public_key | values' ~/.ripple/validator-keys.json`

SSL=`openssl dgst -sha256 -hex -sign ~/ssl/_dotorie_com_private.key <(echo ${KEY})`
IFS=' ' read -a SSL_SIGN <<< "${SSL}"

DOMAIN=${1}
SIGN=`/opt/ripple/bin/validator-keys --keyfile ~/.ripple/validator-keys.json sign ${DOMAIN}`

echo -e "DOMAIN\n${DOMAIN}"
echo ""
echo -e "Validator Public Key\n${KEY}"
echo ""
echo -e "SSL Signature\n${SSL_SIGN[1]}"
echo ""
echo -e "Domain Signature\n${SIGN}"
