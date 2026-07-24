# Web stack debugging #2

Third project of the webstack debugging series, about not running things
as root when a less-privileged user will do.

## Tasks

- **0-iamsomeoneelse** — takes a username as its only argument and runs
  `whoami` as that user with `sudo -u`.
- **1-run_nginx_as_nginx** — reconfigures nginx so it runs as the
  unprivileged `nginx` user instead of root.
