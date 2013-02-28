# manage EL based distros
class lsb::centos inherits lsb::base {
  $package_name = $::lsbmajdistrelease ? {
    5       => 'redhat-lsb',
    default => 'redhat-lsb-core'
  }
  Package['lsb']{
    name => $package_name,
  }
}
