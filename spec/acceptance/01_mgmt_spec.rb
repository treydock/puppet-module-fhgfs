require 'spec_helper_acceptance'

describe 'fhgfs class:' do
  context 'with mgmtd and admon' do
    node = find_only_one(:mgmt)

    it 'should run successfully' do
      pp = <<-EOS
        file { '/fhgfs':
          ensure  => directory,
        }->
        class { 'fhgfs':
          mgmtd                 => true,
          admon                 => true,
          utils_only            => true,
          mgmtd_host            => '#{mgmt_ip}',
          release               => '#{RSpec.configuration.fhgfs_release}',
          mgmtd_service_ensure  => 'running',
          mgmtd_service_enable  => true,
          mgmtd_store_directory => '/fhgfs/mgmtd',
          admon_service_ensure  => 'running',
          admon_service_enable  => true,
        }
      EOS

      apply_manifest_on(node, pp, :catch_failures => true)
      apply_manifest_on(node, pp, :catch_changes => true)
    end

    describe service('fhgfs-mgmtd'), :node => node do
      it { should be_enabled }
      it { should be_running }
    end

    describe service('fhgfs-admon'), :node => node do
      it { should be_enabled }
      it { should be_running }
    end

    describe service('fhgfs-helperd'), :node => node do
      it { should_not be_enabled }
      it { should_not be_running }
    end

    describe service('fhgfs-client'), :node => node do
      it { should_not be_enabled }
      it { should_not be_running }
    end

    describe port(8008), :node => node do
      it { should be_listening }
    end

    describe port(8000), :node => node do
      it { should be_listening }
    end
  end
end
