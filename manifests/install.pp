# == Class: clamav::install
#
# This class installs clamav.  It should not be called directly.
#
#
# === Authors
#
# * Justin Lambert <mailto:jlambert@letsevenup.com>
#
class clamav::install (
){

  package { ['clamav', 'clamav-scanner', 'clamav-server', 'clamav-scanner-systemd', 'clamav-server-systemd', 'clamav-update']:
    ensure => installed,
  }

}
