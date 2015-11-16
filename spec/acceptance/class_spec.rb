require 'spec_helper_acceptance'

describe 'clamav' do

  context 'install' do
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      class { 'clamav':
      }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes  => true)
    end

    describe package('clamav') do
      it { should be_installed }
    end

    describe service('clamd') do
      it { should be_running }
    end
  end # install

end
