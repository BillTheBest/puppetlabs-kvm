# Install and configure KVM user space tools such as qemu-kvm.
#
# == Parameters
#
# [qemu_package]
#   *Optional* Specify qemu-kvm package name to install.
# [qemu_version]
#   *Optional* Specify qemu-kvm version to install.
#
# == Variables
#
# N/A
#
# == Examples
#
#   class { 'kvm': }
#
# == Authors
#
# Ken Barber <ken@bob.sh>
#
# == Copyright
#
# Copyright 2011 Puppetlabs Inc, unless otherwise noted.
#
class kvm (

  $qemu_package = $kvm::params::qemu_package,
  $qemu_version = $kvm::params::qemu_version

  ) inherits kvm::params {

  package { $qemu_package:
    ensure => $qemu_version,
  }

}
