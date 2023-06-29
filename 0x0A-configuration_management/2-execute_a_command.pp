# kill a process named killmenow
exec { 'killmenow_process':
  command     => 'pkill killmenow',
  path        => ['/bin', '/usr/bin'],
  onlyif      => 'pgrep killmenow',
  refreshonly => true,
}
