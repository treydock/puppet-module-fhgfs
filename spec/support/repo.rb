shared_examples_for 'fhgfs::repo' do
  it { should create_class('fhgfs::repo') }

  it do
    should contain_yumrepo('fhgfs').with({
      'descr'     => "FhGFS 2014.01 (RHEL6)",
      'baseurl'   => "http://www.fhgfs.com/release/fhgfs_2014.01/dists/rhel6",
      'gpgkey'    => 'http://www.fhgfs.com/release/fhgfs_2014.01/gpg/RPM-GPG-KEY-fhgfs',
      'gpgcheck'  => '0',
      'enabled'   => '1',
    })
  end

  context "when release => '2012.10'" do
    let(:params) {{ :release => '2012.10' }}

    it do
      should contain_yumrepo('fhgfs').with({
        'descr'     => "FhGFS 2012.10 (RHEL6)",
        'baseurl'   => "http://www.fhgfs.com/release/fhgfs_2012.10/dists/rhel6",
        'gpgkey'    => 'http://www.fhgfs.com/release/fhgfs_2012.10/gpg/RPM-GPG-KEY-fhgfs',
        'gpgcheck'  => '0',
        'enabled'   => '1',
      })
    end
  end

  context "with custom baseurl" do
    let(:params) {{ :repo_baseurl => 'http://yum.example.com/fhgfs/fhgfs_2014.01/dists/rhel6' }}
    it { should contain_yumrepo('fhgfs').with_baseurl("http://yum.example.com/fhgfs/fhgfs_2014.01/dists/rhel6") }
  end

  context "with custom gpgkey" do
    let(:params) {{ :repo_gpgkey => 'http://foo.com/RPM-GPG-KEY-fhgfs' }}
    it { should contain_yumrepo('fhgfs').with_gpgkey("http://foo.com/RPM-GPG-KEY-fhgfs") }
  end

  context "with gpgcheck => '1'" do
    let(:params) {{ :repo_gpgcheck => '1' }}
    it { should contain_yumrepo('fhgfs').with_gpgcheck('1') }
  end

  context "with enabled => '0'" do
    let(:params) {{ :repo_enabled => '0' }}
    it { should contain_yumrepo('fhgfs').with_enabled('0') }
  end
end
