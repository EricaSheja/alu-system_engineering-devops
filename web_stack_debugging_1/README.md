# Web stack debugging #1

Second project of the webstack debugging series: nginx is running but not
reachable on port 80.

## Tasks

- **0-nginx_likes_port_80** — nginx is configured to listen on port 8080
  instead of 80. The fix re-links the site config and restarts the
  service so it comes up on port 80.
- **1-debugging_made_short** *(advanced)* — the same fix, but constrained
  to 5 lines or less without `;`, `&&`, or calling the previous script.
