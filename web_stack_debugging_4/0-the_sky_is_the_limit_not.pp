# puppet code to raise nginx's open file descriptor limit

exec { 'fix-nginx-ulimit':
  path    => [ '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' ],
  command => "sed -i 's/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/' /etc/default/nginx && service nginx restart",
}
