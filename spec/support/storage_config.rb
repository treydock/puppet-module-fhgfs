shared_context 'fhgfs::storage::config' do
  it do
    should contain_file('/etc/fhgfs/fhgfs-storage.conf').with({
      :ensure   => 'present',
      :owner    => 'root',
      :group    => 'root',
      :mode     => '0644',
    })
  end

  it do
    verify_contents(catalogue, '/etc/fhgfs/fhgfs-storage.conf', [
      'logLevel                     = 3',
      'logNoDate                    = false',
      'logStdFile                   = /var/log/fhgfs-storage.log',
      'logNumLines                  = 50000',
      'logNumRotatedFiles           = 5',
      'connPortShift                = 0',
      'connMgmtdPortUDP             = 8008',
      'connMgmtdPortTCP             = 8008',
      'connStoragePortUDP           = 8003',
      'connStoragePortTCP           = 8003',
      'connUseSDP                   = false',
      'connUseRDMA                  = true',
      'connRDMATypeOfService        = 0',
      'connBacklogTCP               = 128',
      'connInterfacesFile           = ',
      'connNetFilterFile            = ',
      'storeStorageDirectory        = ',
      'storeAllowFirstRunInit       = true',
      'tuneNumWorkers               = 12',
      'tuneBindToNumaZone           = ',
      'tuneWorkerBufSize            = 4m',
      'tuneFileReadSize             = 32k',
      'tuneFileReadAheadTriggerSize = 4m',
      'tuneFileReadAheadSize        = 0m',
      'tuneFileWriteSize            = 64k',
      'tuneFileWriteSyncSize        = 0m',
      'tuneUsePerUserMsgQueues      = false',
      'sysMgmtdHost                 = ',
      'runDaemonized                = true',
    ])
  end

  it do
    should contain_file('/etc/fhgfs/interfaces.storage').with({
      :ensure   => 'absent',
      :content  => /^$/,
      :owner    => 'root',
      :group    => 'root',
      :mode     => '0644',
    })
  end

  context 'when storage_config_overrides defined' do
    let(:params) {{ :storage => true, :storage_config_overrides => {'tuneNumWorkers'  => '24'} }}

    it do
      verify_contents(catalogue, '/etc/fhgfs/fhgfs-storage.conf', [
        'tuneNumWorkers               = 24',
      ])
    end
  end

  context 'when storage_conn_interfaces => ["eth0"]' do
    let(:params) {{ :storage => true, :storage_conn_interfaces => ["eth0"] }}

    it do
      verify_contents(catalogue, '/etc/fhgfs/fhgfs-storage.conf', [
        'connInterfacesFile           = /etc/fhgfs/interfaces.storage',
      ])
    end

    it { should contain_file('/etc/fhgfs/interfaces.storage').with_ensure('present') }

    it do
      verify_contents(catalogue, '/etc/fhgfs/interfaces.storage', ['eth0'])
    end
  end

  context 'when storage_store_directory => "/fhgfs/storage"' do
    let(:params) {{ :storage => true, :storage_store_directory => "/fhgfs/storage" }}

    it do
      verify_contents(catalogue, '/etc/fhgfs/fhgfs-storage.conf', [
        'storeStorageDirectory        = /fhgfs/storage',
      ])
    end
  end

  context 'when mgmtd_host => "mgmtd.foo"' do
    let(:params) {{ :storage => true, :mgmtd_host => 'mgmtd.foo' }}

    it do
      verify_contents(catalogue, '/etc/fhgfs/fhgfs-storage.conf', [
        'sysMgmtdHost                 = mgmtd.foo',
      ])
    end
  end

  context 'when release => "2014.01"' do
    let(:params) {{ :storage => true, :release => '2014.01' }}

    it do
      verify_contents(catalogue, '/etc/fhgfs/fhgfs-storage.conf', [
        'sysMgmtdHost                 = ',
        'storeStorageDirectory        = ',
        'storeAllowFirstRunInit       = true',
        '# --- Section 1.2: [Advanced Settings] ---',
        'logLevel                     = 3',
        'logNoDate                    = false',
        'logStdFile                   = /var/log/fhgfs-storage.log',
        'logNumLines                  = 50000',
        'logNumRotatedFiles           = 5',
        'connPortShift                = 0',
        'connMgmtdPortUDP             = 8008',
        'connMgmtdPortTCP             = 8008',
        'connStoragePortUDP           = 8003',
        'connStoragePortTCP           = 8003',
        'connUseSDP                   = false',
        'connUseRDMA                  = true',
        'connRDMATypeOfService        = 0',
        'connBacklogTCP               = 128',
        'connInterfacesFile           = ',
        'connNetFilterFile            = ',
        'connAuthFile                 = ',
        'tuneNumWorkers               = 12',
        'tuneBindToNumaZone           = ',
        'tuneWorkerBufSize            = 4m',
        'tuneFileReadSize             = 32k',
        'tuneFileReadAheadTriggerSize = 4m',
        'tuneFileReadAheadSize        = 0m',
        'tuneFileWriteSize            = 64k',
        'tuneFileWriteSyncSize        = 0m',
        'tuneUsePerUserMsgQueues      = false',
        'runDaemonized                = true',
      ])
    end
  end
end
