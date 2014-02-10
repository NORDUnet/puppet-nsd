# Class: nsd::params
#
# Set some params for the nsd module
#
class nsd::params {

  case $::operatingsystem {
    'openbsd': {
      $config_file   = '/etc/nsd.conf'
      $zonedir       = '/var/nsd/zones'
      $service_name  = 'nsd'
      $owner         = '_nsd'
      $group         = '_nsd'
      $control_cmd   = 'nsdc'
      $databse       = '/var/nsd/db/nsd.db'
    }
    default: {
      fail('nsd not supported on this platform, please help add support!')
    }
  }
}
