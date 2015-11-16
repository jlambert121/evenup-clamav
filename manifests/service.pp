# == Class: clamav::service
#
# This class manages the clamav service.  It should not be called directly.
#
#
# === Authors
#
# * Justin Lambert <mailto:jlambert@letsevenup.com>
#
class clamav::service {

  service { 'clamd':
    ensure => running,
    enable => true,
  }

}
