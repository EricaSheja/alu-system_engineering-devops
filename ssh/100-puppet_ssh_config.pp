# puppet code to enforce key-only ssh client auth using ~/.ssh/school

file_line { 'disable password auth':
  path => '/etc/ssh/ssh_config',
  line => '    PasswordAuthentication no',
}

file_line { 'use school identity file':
  path => '/etc/ssh/ssh_config',
  line => '    IdentityFile ~/.ssh/school',
}
