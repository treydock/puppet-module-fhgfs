# private class
class fhgfs::defaults {

  $mgmtd_default_configs = {
    '2012.10' => {
      'logLevel' => '2',
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-mgmtd.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '5',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connBacklogTCP' => '128',
      'connInterfacesFile' => '',
      'connNetFilterFile' => '',
      'storeMgmtdDirectory' => '',
      'storeAllowFirstRunInit' => 'true',
      'tuneNumWorkers' => '4',
      'tuneClientAutoRemoveMins' => '30',
      'tuneMetaSpaceLowLimit' => '10G',
      'tuneMetaSpaceEmergencyLimit' => '3G',
      'tuneStorageSpaceLowLimit' => '512G',
      'tuneStorageSpaceEmergencyLimit' => '10G',
      'sysAllowNewServers' => 'true',
      'sysForcedRoot' => '0',
      'sysOverrideStoredRoot' => 'false',
      'runDaemonized' => 'true',
    },
    '2014.01' => {
      'storeMgmtdDirectory' => '',
      'storeAllowFirstRunInit' => 'true',
      'sysAllowNewServers' => 'true',
      'logLevel' => '2',
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-mgmtd.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '5',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connBacklogTCP' => '128',
      'connInterfacesFile' => '',
      'connNetFilterFile' => '',
      'connAuthFile' => '',
      'tuneNumWorkers' => '4',
      'tuneClientAutoRemoveMins' => '30',
      'tuneMetaSpaceLowLimit' => '10G',
      'tuneMetaSpaceEmergencyLimit' => '3G',
      'tuneStorageSpaceLowLimit' => '512G',
      'tuneStorageSpaceEmergencyLimit' => '10G',
      'runDaemonized' => 'true',
    }
  }

  $mgmtd_config_keys = {
    '2012.10' => [
      'logLevel',
      'logNoDate',
      'logStdFile',
      'logNumLines',
      'logNumRotatedFiles',
      'connPortShift',
      'connMgmtdPortUDP',
      'connMgmtdPortTCP',
      'connBacklogTCP',
      'connInterfacesFile',
      'connNetFilterFile',
      'storeMgmtdDirectory',
      'storeAllowFirstRunInit',
      'tuneNumWorkers',
      'tuneClientAutoRemoveMins',
      'tuneMetaSpaceLowLimit',
      'tuneMetaSpaceEmergencyLimit',
      'tuneStorageSpaceLowLimit',
      'tuneStorageSpaceEmergencyLimit',
      'sysAllowNewServers',
      'sysForcedRoot',
      'sysOverrideStoredRoot',
      'runDaemonized',
    ],
    '2014.01' => {
      'basic'     => [
        'storeMgmtdDirectory',
        'storeAllowFirstRunInit',
        'sysAllowNewServers',
      ],
      'advanced'  => [
        'logLevel',
        'logNoDate',
        'logStdFile',
        'logNumLines',
        'logNumRotatedFiles',
        'connPortShift',
        'connMgmtdPortUDP',
        'connMgmtdPortTCP',
        'connBacklogTCP',
        'connInterfacesFile',
        'connNetFilterFile',
        'connAuthFile',
        'tuneNumWorkers',
        'tuneClientAutoRemoveMins',
        'tuneMetaSpaceLowLimit',
        'tuneMetaSpaceEmergencyLimit',
        'tuneStorageSpaceLowLimit',
        'tuneStorageSpaceEmergencyLimit',
        'runDaemonized',
      ]
      },
  }

  $meta_default_configs = {
    '2012.10' => {
      'logLevel' => '3',
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-meta.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '5',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connMetaPortUDP' => '8005',
      'connMetaPortTCP' => '8005',
      'connUseSDP' => 'false',
      'connUseRDMA' => 'true',
      'connRDMATypeOfService' => '0',
      'connBacklogTCP' => '128',
      'connMaxInternodeNum' => '10',
      'connInterfacesFile' => '',
      'connNetFilterFile' => '',
      'connNonPrimaryExpiration' => '10000',
      'storeMetaDirectory' => '',
      'storeAllowFirstRunInit' => 'true',
      'storeUseExtendedAttribs' => 'true',
      'tuneNumWorkers' => '0',
      'tuneBindToNumaZone' => '',
      'tuneTargetChooser' => 'randomized',
      'tuneRotateMirrorTargets' => 'false',
      'tuneUsePerUserMsgQueues' => 'false',
      'sysMgmtdHost' => '',
      'runDaemonized' => 'true',
    },
    '2014.01' => {
      'sysMgmtdHost' => '',
      'storeMetaDirectory' => '',
      'storeAllowFirstRunInit' => 'true',
      'logLevel' => '3',
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-meta.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '5',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connMetaPortUDP' => '8005',
      'connMetaPortTCP' => '8005',
      'connUseSDP' => 'false',
      'connUseRDMA' => 'true',
      'connRDMATypeOfService' => '0',
      'connBacklogTCP' => '128',
      'connMaxInternodeNum' => '10',
      'connInterfacesFile' => '',
      'connNetFilterFile' => '',
      'connFallbackExpirationSecs' => '900',
      'connAuthFile' => '',
      'storeUseExtendedAttribs' => 'true',
      'tuneNumWorkers' => '0',
      'tuneBindToNumaZone' => '',
      'tuneTargetChooser' => 'randomized',
      'tuneRotateMirrorTargets' => 'false',
      'tuneUsePerUserMsgQueues' => 'false',
      'runDaemonized' => 'true',
    },
  }

  $meta_config_keys = {
    '2012.10' => [
      'logLevel',
      'logNoDate',
      'logStdFile',
      'logNumLines',
      'logNumRotatedFiles',
      'connPortShift',
      'connMgmtdPortUDP',
      'connMgmtdPortTCP',
      'connMetaPortUDP',
      'connMetaPortTCP',
      'connUseSDP',
      'connUseRDMA',
      'connRDMATypeOfService',
      'connBacklogTCP',
      'connMaxInternodeNum',
      'connInterfacesFile',
      'connNetFilterFile',
      'connNonPrimaryExpiration',
      'storeMetaDirectory',
      'storeAllowFirstRunInit',
      'storeUseExtendedAttribs',
      'tuneNumWorkers',
      'tuneBindToNumaZone',
      'tuneTargetChooser',
      'tuneRotateMirrorTargets',
      'tuneUsePerUserMsgQueues',
      'sysMgmtdHost',
      'runDaemonized',
    ],
    '2014.01' => {
      'basic'     => [
        'sysMgmtdHost',
        'storeMetaDirectory',
        'storeAllowFirstRunInit',
      ],
      'advanced'  => [
        'logLevel',
        'logNoDate',
        'logStdFile',
        'logNumLines',
        'logNumRotatedFiles',
        'connPortShift',
        'connMgmtdPortUDP',
        'connMgmtdPortTCP',
        'connMetaPortUDP',
        'connMetaPortTCP',
        'connUseSDP',
        'connUseRDMA',
        'connRDMATypeOfService',
        'connBacklogTCP',
        'connMaxInternodeNum',
        'connInterfacesFile',
        'connNetFilterFile',
        'connFallbackExpirationSecs',
        'connAuthFile',
        'storeUseExtendedAttribs',
        'tuneNumWorkers',
        'tuneBindToNumaZone',
        'tuneTargetChooser',
        'tuneRotateMirrorTargets',
        'tuneUsePerUserMsgQueues',
        'runDaemonized',
      ],
    }
  }

  $storage_default_configs = {
    '2012.10' => {
      'logLevel' => '3',
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-storage.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '5',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connStoragePortUDP' => '8003',
      'connStoragePortTCP' => '8003',
      'connUseSDP' => 'false',
      'connUseRDMA' => 'true',
      'connRDMATypeOfService' => '0',
      'connBacklogTCP' => '128',
      'connInterfacesFile' => '',
      'connNetFilterFile' => '',
      'storeStorageDirectory' => '',
      'storeAllowFirstRunInit' => 'true',
      'tuneNumWorkers' => '12',
      'tuneBindToNumaZone' => '',
      'tuneWorkerBufSize' => '4m',
      'tuneFileReadSize' => '32k',
      'tuneFileReadAheadTriggerSize' => '4m',
      'tuneFileReadAheadSize' => '0m',
      'tuneFileWriteSize' => '64k',
      'tuneFileWriteSyncSize' => '0m',
      'tuneUsePerUserMsgQueues' => 'false',
      'sysMgmtdHost' => '',
      'runDaemonized' => 'true',
    },
    '2014.01' => {
      'sysMgmtdHost' => '',
      'storeStorageDirectory' => '',
      'storeAllowFirstRunInit' => 'true',
      'logLevel' => '3',
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-storage.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '5',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connStoragePortUDP' => '8003',
      'connStoragePortTCP' => '8003',
      'connUseSDP' => 'false',
      'connUseRDMA' => 'true',
      'connRDMATypeOfService' => '0',
      'connBacklogTCP' => '128',
      'connInterfacesFile' => '',
      'connNetFilterFile' => '',
      'connAuthFile' => '',
      'tuneNumWorkers' => '12',
      'tuneBindToNumaZone' => '',
      'tuneWorkerBufSize' => '4m',
      'tuneFileReadSize' => '32k',
      'tuneFileReadAheadTriggerSize' => '4m',
      'tuneFileReadAheadSize' => '0m',
      'tuneFileWriteSize' => '64k',
      'tuneFileWriteSyncSize' => '0m',
      'tuneUsePerUserMsgQueues' => 'false',
      'runDaemonized' => 'true',
    },
  }

  $storage_config_keys = {
    '2012.10' => [
      'logLevel',
      'logNoDate',
      'logStdFile',
      'logNumLines',
      'logNumRotatedFiles',
      'connPortShift',
      'connMgmtdPortUDP',
      'connMgmtdPortTCP',
      'connStoragePortUDP',
      'connStoragePortTCP',
      'connUseSDP',
      'connUseRDMA',
      'connRDMATypeOfService',
      'connBacklogTCP',
      'connInterfacesFile',
      'connNetFilterFile',
      'storeStorageDirectory',
      'storeAllowFirstRunInit',
      'tuneNumWorkers',
      'tuneBindToNumaZone',
      'tuneWorkerBufSize',
      'tuneFileReadSize',
      'tuneFileReadAheadTriggerSize',
      'tuneFileReadAheadSize',
      'tuneFileWriteSize',
      'tuneFileWriteSyncSize',
      'tuneUsePerUserMsgQueues',
      'sysMgmtdHost',
      'runDaemonized',
    ],
    '2014.01' => {
      'basic'     => [
        'sysMgmtdHost',
        'storeStorageDirectory',
        'storeAllowFirstRunInit',
      ],
      'advanced'  => [
        'logLevel',
        'logNoDate',
        'logStdFile',
        'logNumLines',
        'logNumRotatedFiles',
        'connPortShift',
        'connMgmtdPortUDP',
        'connMgmtdPortTCP',
        'connStoragePortUDP',
        'connStoragePortTCP',
        'connUseSDP',
        'connUseRDMA',
        'connRDMATypeOfService',
        'connBacklogTCP',
        'connInterfacesFile',
        'connNetFilterFile',
        'connAuthFile',
        'tuneNumWorkers',
        'tuneBindToNumaZone',
        'tuneWorkerBufSize',
        'tuneFileReadSize',
        'tuneFileReadAheadTriggerSize',
        'tuneFileReadAheadSize',
        'tuneFileWriteSize',
        'tuneFileWriteSyncSize',
        'tuneUsePerUserMsgQueues',
        'runDaemonized',
      ],
    }
  }

  $admon_default_configs = {
    '2012.10' => {
      'logLevel' => '2',
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-admon.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '2',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connAdmonPortUDP' => '8007',
      'connMaxInternodeNum' => '3',
      'connNetFilterFile' => '',
      'connNonPrimaryExpiration' => '10000',
      'tuneNumWorkers' => '4',
      'sysMgmtdHost' => '',
      'runDaemonized' => 'true',
      'httpPort' => '8000',
      'queryInterval' => '5',
      'databaseFile' => '/var/lib/fhgfs/fhgfs-admon.db',
      'clearDatabase' => 'false',
      'mailEnabled' => 'false',
      'mailSmtpServer' => '',
      'mailSender' => '',
      'mailRecipient' => '',
      'mailMinDownTimeSec' => '10',
      'mailResendMailTimeMin' => '60',
      'mailCheckIntervalTimeSec' => '30',
    },
    '2014.01' => {
      'sysMgmtdHost' => '',
      'logLevel' => '2',
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-admon.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '2',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connAdmonPortUDP' => '8007',
      'connMaxInternodeNum' => '3',
      'connNetFilterFile' => '',
      'connFallbackExpirationSecs' => '900',
      'connAuthFile' => '',
      'tuneNumWorkers' => '4',
      'runDaemonized' => 'true',
      'httpPort' => '8000',
      'queryInterval' => '5',
      'databaseFile' => '/var/lib/fhgfs/fhgfs-admon.db',
      'clearDatabase' => 'false',
      'mailEnabled' => 'false',
      'mailSmtpServer' => '',
      'mailSender' => '',
      'mailRecipient' => '',
      'mailMinDownTimeSec' => '10',
      'mailResendMailTimeMin' => '60',
      'mailCheckIntervalTimeSec' => '30',
    },
  }

  $admon_config_keys = {
    '2012.10' => [
      'logLevel',
      'logNoDate',
      'logStdFile',
      'logNumLines',
      'logNumRotatedFiles',
      'connPortShift',
      'connMgmtdPortUDP',
      'connMgmtdPortTCP',
      'connAdmonPortUDP',
      'connMaxInternodeNum',
      'connNetFilterFile',
      'connNonPrimaryExpiration',
      'tuneNumWorkers',
      'sysMgmtdHost',
      'runDaemonized',
      'httpPort',
      'queryInterval',
      'databaseFile',
      'clearDatabase',
      'mailEnabled',
      'mailSmtpServer',
      'mailSender',
      'mailRecipient',
      'mailMinDownTimeSec',
      'mailResendMailTimeMin',
      'mailCheckIntervalTimeSec',
    ],
    '2014.01' => {
      'basic'     => [
        'sysMgmtdHost',
      ],
      'advanced'  => [
        'logLevel',
        'logNoDate',
        'logStdFile',
        'logNumLines',
        'logNumRotatedFiles',
        'connPortShift',
        'connMgmtdPortUDP',
        'connMgmtdPortTCP',
        'connAdmonPortUDP',
        'connMaxInternodeNum',
        'connNetFilterFile',
        'connFallbackExpirationSecs',
        'connAuthFile',
        'tuneNumWorkers',
        'runDaemonized',
        'httpPort',
        'queryInterval',
        'databaseFile',
        'clearDatabase',
        'mailEnabled',
        'mailSmtpServer',
        'mailSender',
        'mailRecipient',
        'mailMinDownTimeSec',
        'mailResendMailTimeMin',
        'mailCheckIntervalTimeSec',
      ],
    }
  }

  $helperd_default_configs = {
    '2012.10' => {
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-client.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '5',
      'connPortShift' => '0',
      'connHelperdPortTCP' => '8006',
      'tuneNumWorkers' => '2',
      'runDaemonized' => 'true',
    },
    '2014.01' => {
      'logNoDate' => 'false',
      'logStdFile' => '/var/log/fhgfs-client.log',
      'logNumLines' => '50000',
      'logNumRotatedFiles' => '5',
      'connPortShift' => '0',
      'connHelperdPortTCP' => '8006',
      'connAuthFile' => '',
      'tuneNumWorkers' => '2',
      'runDaemonized' => 'true',
    },
  }

  $helperd_config_keys = {
    '2012.10' => [
      'logNoDate',
      'logStdFile',
      'logNumLines',
      'logNumRotatedFiles',
      'connPortShift',
      'connHelperdPortTCP',
      'tuneNumWorkers',
      'runDaemonized',
    ],
    '2014.01' => [
      'logNoDate',
      'logStdFile',
      'logNumLines',
      'logNumRotatedFiles',
      'connPortShift',
      'connHelperdPortTCP',
      'connAuthFile',
      'tuneNumWorkers',
      'runDaemonized',
    ]
  }

  $client_default_configs = {
    '2012.10' => {
      'logLevel' => '3',
      'logType' => 'helperd',
      'logClientID' => 'false',
      'logHelperdIP' => '',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connClientPortUDP' => '8004',
      'connHelperdPortTCP' => '8006',
      'connUseSDP' => 'false',
      'connUseRDMA' => 'true',
      'connRDMABufSize' => '8192',
      'connRDMABufNum' => '128',
      'connRDMATypeOfService' => '0',
      'connMaxInternodeNum' => '12',
      'connInterfacesFile' => '',
      'connNetFilterFile' => '',
      'connNonPrimaryExpiration' => '10000',
      'connCommRetrySecs' => '600',
      'tuneNumWorkers' => '0',
      'tunePreferredMetaFile' => '',
      'tunePreferredStorageFile' => '',
      'tuneFileCacheType' => 'buffered',
      'tuneRemoteFSync' => 'true',
      'tuneUseGlobalFileLocks' => 'false',
      'sysMgmtdHost' => '',
      'sysCreateHardlinksAsSymlinks' => 'true',
      'sysMountSanityCheckMS' => '11000',
      'sysSyncOnClose' => 'false',
      'sysSessionCheckOnClose' => 'false',
      'quotaEnabled' => 'false',
    },
    '2014.01' => {
      'sysMgmtdHost' => '',
      'logLevel' => '3',
      'logType' => 'helperd',
      'logClientID' => 'false',
      'logHelperdIP' => '',
      'connPortShift' => '0',
      'connMgmtdPortUDP' => '8008',
      'connMgmtdPortTCP' => '8008',
      'connClientPortUDP' => '8004',
      'connHelperdPortTCP' => '8006',
      'connUseSDP' => 'false',
      'connUseRDMA' => 'true',
      'connRDMABufSize' => '8192',
      'connRDMABufNum' => '128',
      'connRDMATypeOfService' => '0',
      'connMaxInternodeNum' => '12',
      'connInterfacesFile' => '',
      'connNetFilterFile' => '',
      'connFallbackExpirationSecs' => '900',
      'connCommRetrySecs' => '600',
      'connAuthFile' => '',
      'tuneNumWorkers' => '0',
      'tunePreferredMetaFile' => '',
      'tunePreferredStorageFile' => '',
      'tuneFileCacheType' => 'buffered',
      'tuneRemoteFSync' => 'true',
      'tuneUseGlobalFileLocks' => 'false',
      'tuneUseGlobalAppendLocks' => 'false',
      'sysCreateHardlinksAsSymlinks' => 'false',
      'sysMountSanityCheckMS' => '11000',
      'sysSyncOnClose' => 'false',
      'sysSessionCheckOnClose' => 'false',
      'quotaEnabled' => 'false',
    },
  }

  $client_config_keys = {
    '2012.10' => [
      'logLevel',
      'logType',
      'logClientID',
      'logHelperdIP',
      'connPortShift',
      'connMgmtdPortUDP',
      'connMgmtdPortTCP',
      'connClientPortUDP',
      'connHelperdPortTCP',
      'connUseSDP',
      'connUseRDMA',
      'connRDMABufSize',
      'connRDMABufNum',
      'connRDMATypeOfService',
      'connMaxInternodeNum',
      'connInterfacesFile',
      'connNetFilterFile',
      'connNonPrimaryExpiration',
      'connCommRetrySecs',
      'tuneNumWorkers',
      'tunePreferredMetaFile',
      'tunePreferredStorageFile',
      'tuneFileCacheType',
      'tuneRemoteFSync',
      'tuneUseGlobalFileLocks',
      'sysMgmtdHost',
      'sysCreateHardlinksAsSymlinks',
      'sysMountSanityCheckMS',
      'sysSyncOnClose',
      'sysSessionCheckOnClose',
      'quotaEnabled',
    ],
    '2014.01' => {
      'basic'     => [
        'sysMgmtdHost',
      ],
      'advanced'  => [
        'logLevel',
        'logType',
        'logClientID',
        'logHelperdIP',
        'connPortShift',
        'connMgmtdPortUDP',
        'connMgmtdPortTCP',
        'connClientPortUDP',
        'connHelperdPortTCP',
        'connUseSDP',
        'connUseRDMA',
        'connRDMABufSize',
        'connRDMABufNum',
        'connRDMATypeOfService',
        'connMaxInternodeNum',
        'connInterfacesFile',
        'connNetFilterFile',
        'connFallbackExpirationSecs',
        'connCommRetrySecs',
        'connAuthFile',
        'tuneNumWorkers',
        'tunePreferredMetaFile',
        'tunePreferredStorageFile',
        'tuneFileCacheType',
        'tuneRemoteFSync',
        'tuneUseGlobalFileLocks',
        'tuneUseGlobalAppendLocks',
        'sysCreateHardlinksAsSymlinks',
        'sysMountSanityCheckMS',
        'sysSyncOnClose',
        'sysSessionCheckOnClose',
        'quotaEnabled',
      ],
    }
  }
}