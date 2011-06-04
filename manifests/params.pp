# KVM parameter class. Not to be used directly.
#
# == OS Support
#
# * Debian 7.0 (wheezy)
# * Ubuntu
#
# == Variables
#
# This is a list of variables that must be set for each operating system.
# 
# [qemu_package]
#   Package(s) for installing qemu-kvm.
# [qemu_version]
#   Version for qemu-kvm tool.
#
# == Authors
#
# Ken Barber <ken@bob.sh>
#
# == Copyright
#
# Copyright 2011 Puppetlabs Inc, unless otherwise noted.
#
class kvm::params {

  case $operatingsystem {
    'ubuntu', 'debian': {
      $qemu_package = "qemu-kvm"
      $qemu_version = "installed"
    }
    default : {
      fail("Operating system ${operatingsystem} is not supported")
    }
  }
  
}
