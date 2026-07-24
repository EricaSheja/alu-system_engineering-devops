# Web stack debugging #4

Fifth project of the webstack debugging series: nginx collapses under
load, fixed with Puppet.

## Task

- **0-the_sky_is_the_limit_not.pp** — under load, many requests fail
  because `/etc/default/nginx` caps each worker at 15 open file
  descriptors (`ULIMIT="-n 15"`). The manifest raises the limit to 4096
  and restarts nginx so it takes effect.
