require 'spec_helper'

describe 'clamav::config', :type => :class do
  let(:params) { { :clamd_options => {}, :freshclam_options => {}}}

  it { should contain_file('/etc/clamd.d/scan.conf') }
  it { should contain_file('/etc/freshclam.conf') }

end
