require 'spec_helper'

if Puppet.version.to_f >= 4.5
  describe 'test::ipv4_cidr', type: :class do
    describe 'accepts ipv4 addresses' do
      [
        '224.0.0.0/24',
        '255.255.255.255/8',
        '0.0.0.0/16',
        '192.88.99.0/21'
      ].each do |value|
        describe value.inspect do
          let(:params) {{ value: value }}
          it { is_expected.to compile }
        end
      end
    end
    describe 'rejects other values' do
      [
        'nope',
        '77',
        '77/24',
        '4.4.4',
        '4.4.4/24',
        '256.255.255.255/24',
        '255.255.255.255/333',
        '2001:0db8:85a3:0000:0000:8a2e:0370:73342001:0db8:85a3:0000:0000:8a2e:0370:7334/64'
      ].each do |value|
        describe value.inspect do
          let(:params) {{ value: value }}
          it { is_expected.to compile.and_raise_error(/parameter 'value' expects a match for Tea::Ipv4_cidr/) }
        end
      end
    end
  end
end
