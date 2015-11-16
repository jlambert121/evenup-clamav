require 'spec_helper'

describe 'clamav::install', :type => :class do

  it { should create_package('clamav') }
  it { should create_package('clamav-scanner') }
  it { should create_package('clamav-server') }
  it { should create_package('clamav-scanner-systemd') }
  it { should create_package('clamav-server-systemd') }
  it { should create_package('clamav-update') }

end
