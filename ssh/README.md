# SSH

Setting up key-based access to my assigned servers instead of relying on
passwords.

## Tasks

- **0-use_a_private_key** — connects to my server using the private key
  at `~/.ssh/school` and the `ubuntu` user, via `user@host` syntax (no
  `-l` flag).
- **1-create_ssh_key_pair** — generates a new 4096-bit RSA key pair named
  `school`, protected by the passphrase `betty`, non-interactively.
- **2-ssh_config** — a copy of my local `~/.ssh/config`, configured to
  always use `~/.ssh/school` as the identity file and to refuse password
  authentication (`PasswordAuthentication no`), so key-based auth is the
  only option.
- **100-puppet_ssh_config.pp** — the same client configuration as task 2
  (disable password auth, use the `school` identity file), applied via a
  Puppet manifest instead of editing the file by hand.

## Key ideas

- A key pair has a private half (kept secret, ideally passphrase-protected)
  and a public half (shared with servers, added to their
  `~/.ssh/authorized_keys`).
- `PasswordAuthentication no` forces the client to authenticate only with
  keys, removing password brute-forcing as an attack vector entirely.
- `#!/usr/bin/env bash` looks up `bash` on `$PATH`, which is more portable
  than hardcoding `#!/bin/bash`.
