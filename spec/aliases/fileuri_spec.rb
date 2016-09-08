require 'spec_helper'

if Puppet.version.to_f >= 4.5
  describe 'test::fileuri', type: :class do
    describe 'valid handling' do
      %w{
        file:///hello/bla
        file:///foo/bar.log
      }.each do |value|
        describe value.inspect do
          let(:params) {{ value: value }}
          it { is_expected.to compile }
        end
      end
    end

    describe 'invalid path handling' do
      context 'garbage inputs' do
        [
          nil,
          [ nil ],
          [ nil, nil ],
          { 'foo' => 'bar' },
          { },
          '',
          "fil:///notquiteright.org",
          "files:///nah",
          "file://nah",
          "file:/nah",
          "https//notrightbutclose.org"
        ].each do |value|
          describe value.inspect do
            let(:params) {{ value: value }}
            it { is_expected.to compile.and_raise_error(/parameter 'value' expects a match for Tea::Fileuri/) }
          end
        end
      end

    end
  end
end
