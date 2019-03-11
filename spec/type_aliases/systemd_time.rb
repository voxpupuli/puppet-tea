require 'spec_helper'

describe 'Tea::Systemd::Time' do
  it { is_expected.to allow_value('weekday' => ['Mon']) }

  it {
    is_expected.to allow_value(
      'weekday' => ['Mon'],
      'month'   => '*',
      'hour'    => [1, 23]
    )
  }

  it {
    is_expected.to allow_value(
      'hour'   => 23,
      'minute' => '02/3',
      'second' => '23.420000/3.170001'
    )
  }
end
