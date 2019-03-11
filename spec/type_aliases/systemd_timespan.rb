require 'spec_helper'

describe 'Tea::Systemd::TimeSpan' do
  it { is_expected.to allow_value('191919usec') }
  it { is_expected.to allow_value('191919 usec 665 days') }
  it { is_expected.to allow_value('83 minutes 665seconds24hours') }

  it { is_expected.not_to allow_value('83') }
  it { is_expected.not_to allow_value('83minutes665seconds hours') }
end
