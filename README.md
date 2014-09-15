# puppet-fhgfs

Puppet module for managing FraunhoferFS (FhGFS).

## Reference

### Class: fhgfs

Manages the repository necessary to install the FhGFS components.

This class is where the desired version and repository URLs can be overriden

To use the **2012.10** default repositories

    class { 'fhgfs': }

An example of using a custom repository URL

    class { 'fhgfs':
      repo_baseurl  => "http://yum.example.com/fhgfs/fhgfs_2012.10/dists/rhel6",
    }


### Class: fhgfs::mgmtd

Configures the FhGFS management server

class { 'fhgfs::mgmtd': }

### Class: fhgfs::meta

Configures a FhGFS metadata server

class { 'fhgfs::meta': }

### Class: fhgfs::storage

Configures a FhGFS storage server

class { 'fhgfs::storage': }

### Class: fhgfs::client

Configures a FhGFS client

class { 'fhgfs::client': }

### Class: fhgfs::helperd

Configures a FhGFS client's helperd service

Not intended to be defined directly.

### Class: fhgfs::utils

Manages the installation of the FhGFS utilities package

class { 'fhgfs::utils': }

### Fact: fhgfs_version

This Facter fact can be used to determine the installed version of the FhGFS components.

This fact gets the version by querying the **fhgfs-common** package which is installed by all
the FhGFS roles.

## Development

### Dependencies

* rake
* bundler

Install gem dependencies

    bundle install

Run unit tests

    bundle exec rake ci

### Vagrant system tests

If you have Vagrant >= 1.1.0 installed you can run system tests

    bundle exec rake beaker

## TODO

* Refacter the roles to use a shared defined resource to reduce on the amount of duplicate module code
* Allow all config values to be defined in Puppet for all roles using parameter (ie. config_hash)
* Add support for FhGFS Multi-mode
* Allow remote logging and log configuration for fhgfs-client and fhgfs-helperd

## Further Information

* http://www.fhgfs.com/wiki/wikka.php?wakka=FhGFS
