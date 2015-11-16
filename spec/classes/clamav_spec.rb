require 'spec_helper'

describe 'clamav', :type => :class do

  it { should contain_class('clamav::install') }
  it { should contain_class('clamav::config') }
  it { should contain_class('clamav::service') }

end
