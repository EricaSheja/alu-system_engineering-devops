# Web stack debugging #3

Fourth project of the webstack debugging series: a WordPress site
returning `500 Internal Server Error`, fixed with Puppet instead of Bash.

## Task

- **0-strace_is_your_friend.pp** — a typo (`.phpp` instead of `.php`) in
  `wp-settings.php` makes Apache fail to find the file. The Puppet
  manifest runs `sed` to correct the typo.
