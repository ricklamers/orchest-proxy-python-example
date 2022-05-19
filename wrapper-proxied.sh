# Update proxies

# Proxy entries can also be added from environment variables by setting $PROXY_SERVER
echo $PROXY_SERVER >> proxychains.conf
cp proxychains.conf ~/.proxychains/proxychains.conf

echo "Using proxies:" && cat proxychains.conf

proxychains4 python proxied.py