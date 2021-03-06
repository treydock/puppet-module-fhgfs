# private class
class fhgfs::storage::config {

  $conn_interfaces  = $fhgfs::storage_conn_interfaces
  $conn_net_filters = $fhgfs::storage_conn_net_filters

  if $fhgfs::storage_store_directory and ! empty($fhgfs::storage_store_directory) {
    file { 'fhgfs-storeStorageDirectory':
      ensure => 'directory',
      path   => $fhgfs::storage_store_directory,
    }
  }

  file { '/etc/fhgfs/fhgfs-storage.conf':
    ensure  => 'present',
    content => template("fhgfs/${fhgfs::release}/fhgfs-storage.conf.erb"),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { $fhgfs::storage_conn_interfaces_file:
    ensure  => $fhgfs::storage_conn_interfaces_file_ensure,
    content => template('fhgfs/interfaces.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { $fhgfs::storage_conn_net_filter_file:
    ensure  => $fhgfs::storage_conn_net_filter_file_ensure,
    content => template('fhgfs/netfilter.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  if ! defined(File[$fhgfs::conn_tcp_only_filter_file]) {
    file { $fhgfs::conn_tcp_only_filter_file:
      ensure  => $fhgfs::_conn_tcp_only_filter_file_ensure,
      content => inline_template('<%= scope.lookupvar("fhgfs::conn_tcp_only_filters").join("\n") %>'),
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
    }
  }

}
