require 'spec_helper'

describe 'fhgfs' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      it { should compile.with_all_deps }
    end
  end

  let(:facts) do
    on_supported_os['centos-6-x86_64']
  end
  it { should create_class('fhgfs') }
  it { should contain_class('fhgfs::params') }
  it { should contain_class('fhgfs::defaults') }

  it { should contain_anchor('fhgfs::start').that_comes_before('Class[fhgfs::client]') }
  it { should contain_class('fhgfs::client').that_comes_before('Anchor[fhgfs::end]') }
  it { should contain_anchor('fhgfs::end') }

  it { should_not contain_class('fhgfs::mgmtd') }
  it { should_not contain_class('fhgfs::meta') }
  it { should_not contain_class('fhgfs::storage') }
  it { should_not contain_class('fhgfs::admon') }

  it_behaves_like 'fhgfs::client'

  context 'when mgmtd => true and meta => true' do
    let(:params) {{ :mgmtd => true, :meta => true }}

    it { should compile.with_all_deps }
  end

  context 'when storage => true and meta => true' do
    let(:params) {{ :storage => true, :meta => true }}

    it { should compile.with_all_deps }
  end

  context 'when mgmtd => true' do
    let(:params) {{ :mgmtd => true }}

    it { should compile.with_all_deps }
    it { should contain_anchor('fhgfs::start').that_comes_before('Class[fhgfs::mgmtd]') }
    it { should contain_class('fhgfs::mgmtd').that_comes_before('Anchor[fhgfs::end]') }
    it { should contain_anchor('fhgfs::end') }

    it { should_not contain_class('fhgfs::meta') }
    it { should_not contain_class('fhgfs::storage') }
    it { should_not contain_class('fhgfs::admon') }

    it_behaves_like 'fhgfs::mgmtd'
  end

  context 'when meta => true' do
    let(:params) {{ :meta => true }}

    it { should compile.with_all_deps }
    it { should contain_anchor('fhgfs::start').that_comes_before('Class[fhgfs::meta]') }
    it { should contain_class('fhgfs::meta').that_comes_before('Anchor[fhgfs::end]') }
    it { should contain_anchor('fhgfs::end') }

    it { should_not contain_class('fhgfs::mgmtd') }
    it { should_not contain_class('fhgfs::storage') }
    it { should_not contain_class('fhgfs::admon') }

    it_behaves_like 'fhgfs::meta'
  end

  context 'when storage => true' do
    let(:params) {{ :storage => true }}

    it { should compile.with_all_deps }
    it { should contain_anchor('fhgfs::start').that_comes_before('Class[fhgfs::storage]') }
    it { should contain_class('fhgfs::storage').that_comes_before('Anchor[fhgfs::end]') }
    it { should contain_anchor('fhgfs::end') }

    it { should_not contain_class('fhgfs::mgmtd') }
    it { should_not contain_class('fhgfs::meta') }
    it { should_not contain_class('fhgfs::admon') }

    it_behaves_like 'fhgfs::storage'
  end

  context 'when admon => true' do
    let(:params) {{ :admon => true }}

    it { should compile.with_all_deps }
    it { should contain_anchor('fhgfs::start').that_comes_before('Class[fhgfs::admon]') }
    it { should contain_class('fhgfs::admon').that_comes_before('Anchor[fhgfs::end]') }
    it { should contain_anchor('fhgfs::end') }

    it { should_not contain_class('fhgfs::mgmtd') }
    it { should_not contain_class('fhgfs::meta') }
    it { should_not contain_class('fhgfs::storage') }

    it_behaves_like 'fhgfs::admon'
  end

  context 'osfamily => Foo' do
    let(:facts) {{ :osfamily => "Foo" }}
    it 'should raise an error' do
      expect { should compile }.to raise_error(/Unsupported osfamily/)
    end
  end

  # Test validate_bool parameters
  [
    :client,
    :mgmtd,
    :meta,
    :storage,
    :admon,
    :utils_only,
    :manage_client_dependencies,
    :client_build_enabled,
    :client_manage_service,
    :client_service_autorestart,
    :mgmtd_manage_service,
    :mgmtd_service_autorestart,
    :meta_manage_service,
    :meta_service_autorestart,
    :storage_manage_service,
    :storage_service_autorestart,
    :admon_manage_service,
    :admon_service_autorestart,
  ].each do |param|
    context "with #{param} => 'foo'" do
      let(:params) {{ param => 'foo' }}
      it 'should raise an error' do
        expect { should compile }.to raise_error(/is not a boolean/)
      end
    end
  end

  # Test validate_array parameters
  [
    :client_conn_interfaces,
    :mgmtd_conn_interfaces,
    :meta_conn_interfaces,
    :storage_conn_interfaces,
    :client_conn_net_filters,
    :mgmtd_conn_net_filters,
    :meta_conn_net_filters,
    :storage_conn_net_filters,
  ].each do |param|
    context "with #{param} => 'foo'" do
      let(:params) {{ param => 'foo' }}
      it 'should raise an error' do
        expect { should compile }.to raise_error(/is not an Array/)
      end
    end
  end

  # Test validate_array parameters
  [
    :client_config_overrides,
    :helperd_config_overrides,
    :mgmtd_config_overrides,
    :meta_config_overrides,
    :storage_config_overrides,
    :admon_config_overrides,
  ].each do |param|
    context "with #{param} => 'foo'" do
      let(:params) {{ param => 'foo' }}
      it 'should raise an error' do
        expect { should compile }.to raise_error(/is not a Hash/)
      end
    end
  end
end
