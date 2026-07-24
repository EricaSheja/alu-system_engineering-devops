# Web server

Configuring an nginx web server entirely through Bash scripts, so the
setup can be replayed on any server without manual steps.

## Tasks

- **0-transfer_file** — uses `scp` to copy a local file to a remote
  server's home directory. Takes the file path, server IP, username and
  private key path as arguments, and prints a usage message if fewer than
  4 arguments are given.
- **1-install_nginx_web_server** — installs nginx on a fresh Ubuntu
  machine, listening on port 80, serving a page containing
  `Holberton School`.
- **2-setup_a_domain_name** — the domain name (`ericas.tech`) whose DNS A
  record points at my web-01 server.
- **3-redirection** — same as task 1, plus `/redirect_me` answers with a
  301 redirect.
- **4-not_found_page_404** — same as task 3, plus a custom 404 page.
- **5-design_a_beautiful_404_page.html** — a styled, human-friendly 404
  page.
