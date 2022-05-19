# Proxied Python example in Orchest
[![Open in Orchest](https://github.com/orchest/orchest-examples/raw/main/imgs/open_in_orchest_large.svg)](https://cloud.orchest.io/?import_url=https://github.com/ricklamers/orchest-proxy-python-example)

Sometimes it can be useful to be able to proxy all TCP connections that are made from a Python context. For example, when connecting to databases that have specific firewall rules based on the IP of the connection.

This project contains an example where an environment has been pre-configured with [ProxyChains](https://github.com/haad/proxychains).

In `wrapper-proxied.sh` the Python executable is called through ProxyChains to run `proxied.py` with the TCP connections routed through the provided $PROXY_SERVER environment variable.

Formatting:
```
PROXY_SERVER="socks5 208.102.51.6 58208"
```

Use the regular method to set environment variables (in Orchest you can set the at the project, pipeline or job level).


<!-- ![Pipeline visualization](https://pviz.orchest.io/?pipeline=https://github.com/ricklamers/orchest-proxy-python-example/main.orchest) -->
