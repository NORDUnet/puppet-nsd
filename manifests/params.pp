# Class: nsd::params
#
# Set some params for the nsd module
#
class nsd::params {

  case $::operatingsystem {
    'OpenBSD': {
      $config_file   = '/var/nsd/etc/nsd.conf'
      $zonedir       = '/var/nsd/zones'
      $service_name  = 'nsd'
      $owner         = '_nsd'
      $group         = '_nsd'
      $control_cmd   = 'nsd-control'
      $database      = '/var/nsd/db/nsd.db'
    }
    'FreeBSD': {
      $config_file  = '/usr/local/etc/nsd/nsd.conf'
      $zonedir      = '/usr/local/etc/nsd'
      $package_name = 'nsd/nsd'
      $service_name = 'nsd'
      $owner        = 'nsd'
      $group        = 'nsd'
      $database     = '/var/db/nsd/nsd.db'
    }
    default: {
      fail('nsd not supported on this platform, please help add support!')
    }
  }
}
