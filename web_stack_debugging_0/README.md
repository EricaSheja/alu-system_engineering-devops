# Web stack debugging #0

First project of the webstack debugging series: a broken container where
Apache is installed but not serving anything.

## Task

- **0-give_me_a_page** — Apache is installed on the container but the
  service isn't running, so requests to port 80 get nothing back. The fix
  simply starts `apache2`.
