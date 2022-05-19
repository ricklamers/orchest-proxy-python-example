# Update proxies

# Proxy entries can also be added from environment variables by setting $PROXY_SERVER

TMP_LOC=/tmp/proxychains.conf
cp proxychains-template.conf $TMP_LOC
echo $PROXY_SERVER >> $TMP_LOC
cp $TMP_LOC ~/.proxychains/proxychains.conf

echo "Using proxies:" && cat  ~/.proxychains/proxychains.conf

proxychains4 python proxied.py