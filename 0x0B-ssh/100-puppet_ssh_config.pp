#!/usr/bin/env bash
#using puppet to connect without password

file { 'etc/ssh/ssh_config':
  ensure -> present,
}

file_line { 'Turnoff passwd auth':
  path    -> '/etc/ssh/ssh_config',
  line    -> 'PasswordAuthentication no',
  match   -> '^#PasswordAuthentication',
}

file_line { 'Declare identity file':
  path    -> '/etc/ssh/ssh_config',
  line    -> 'IdentityFile ~/.ssh/school',
  match   -> '^#IdentityFile',
}
