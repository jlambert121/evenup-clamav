# init.pp
# Main class of clamav
# Declare main config here
#
# http://www.clamav.net
# http://www.clamxav.com
#

class clamav (
  $clamd_options     = {},
  $freshclam_options = {},
) {

  class { '::clamav::install': } ->
  class { '::clamav::config': } ~>
  class { '::clamav::service': }

  Class['Clamav::Install'] ~> Class['Clamav::Service']
}
