require 'spec_helper'

describe 'clamav::service', :type => :class do

  it { should contain_service('clamd') }

end
