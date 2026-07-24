# Firewall

Locking down web-01 with `ufw` so only the traffic it needs to serve
(SSH, HTTP, HTTPS) can reach it, with everything else blocked by default.

## Tasks

- **0-block_all_incoming_traffic_but** — installs `ufw`, allows ports 22
  (SSH), 80 (HTTP) and 443 (HTTPS), sets the default policy to deny all
  other incoming traffic while leaving outgoing traffic allowed, then
  enables the firewall.
- **100-port_forwarding** — a copy of web-01's `/etc/ufw/before.rules`
  with an added NAT `PREROUTING` rule that redirects incoming traffic on
  port 8080/tcp to port 80/tcp.

## Notes

- Port 22 has to be allowed before `ufw` is enabled, otherwise the active
  SSH session gets cut off with no way back in.
- `ufw enable` normally asks for interactive confirmation, which would
  hang a script running non-interactively — `--force` skips that prompt.
