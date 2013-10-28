# Class: cron
#
# This module manages cron
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class cron {
  $minute1 = generate('/usr/bin/env', 'sh', '-c',  'printf $((RANDOM%30+0))')
  $minute2 = $minute1 + 30

  cron { 'manual-puppet':
    ensure  => present,
    command => '/usr/bin/puppet agent --onetime --no-daemonize --logdest syslog --pluginsync > /dev/null 2>&1',
    user    => 'root',
    hour    => '*',
    minute  => [$minute1, $minute2],
  }
}
