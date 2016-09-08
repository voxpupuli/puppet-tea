require 'spec_helper'

if Puppet.version.to_f >= 4.5
  describe 'test::ipv6_cidr', type: :class do
    describe 'accepts ipv6 addresses' do
      [
        '2001:0db8:85a3:0000:0000:8a2e:0370:7334/32',
        'fa76:8765:34ac:0823:ab76:eee9:0987:1111/48',
        '2001:0db8::1/64'
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
        '2000:7334/32',
        '2001:0db8:::1/32',
        '2001::0db8::1/32',
        '2001:0db8::1/1000'
      ].each do |value|
        describe value.inspect do
          let(:params) {{ value: value }}
          it { is_expected.to compile.and_raise_error(/parameter 'value' expects a match for Tea::Ipv6_cidr/) }
        end
      end
    end
  end
end
