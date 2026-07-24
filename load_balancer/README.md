# Load balancer

Adding redundancy to the web stack: web-01 and web-02 run identical nginx
setups behind lb-01, which balances traffic between them.

## Tasks

- **0-custom_http_response_header** — configures nginx on a server and
  adds a custom `X-Served-By` response header set to the server's own
  hostname, so a response can be traced back to whichever web server
  answered it. Run on both web-01 and web-02.
- **1-install_load_balancer** — installs and configures HAProxy on lb-01
  to round-robin traffic across web-01 and web-02, and makes sure the
  HAProxy service is enabled and (re)started.

## Verifying it

Repeated requests to lb-01 should alternate between web-01 and web-02,
visible via the `X-Served-By` header:

```sh
curl -I <lb-01-ip>
```
