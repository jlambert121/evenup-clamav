# == Class: clamav::config
#
# This class configures clamav and freshclam.  It should not be called directly.
#
#
# === Authors
#
# * Justin Lambert <mailto:jlambert@letsevenup.com>
#
class clamav::config (
  $clamd_options     = $::clamav::clamd_options,
  $freshclam_options = $::clamav::freshclam_options,
) {

  file { '/etc/clamd.d/scan.conf':
    ensure  => file,
    mode    => '0444',
    owner   => 'root',
    group   => 'root',
    content => template("${module_name}/clamd.conf.erb"),
  }

  file { '/etc/freshclam.conf':
    ensure  => file,
    mode    => '0444',
    owner   => 'root',
    group   => 'root',
    content => template("${module_name}/freshclam.conf.erb"),
  }

}
