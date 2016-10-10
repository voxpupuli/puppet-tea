source "https://rubygems.org"

ruby ENV['CUSTOM_RUBY_VERSION'] || '2.1.0'
<<<<<<< HEAD
=======

>>>>>>> 6f39830... add custom ruby version
group :test do
  gem "listen", "<=3.0.6"
  gem "rake"
  gem "puppet", ENV['PUPPET_GEM_VERSION'] || '~> 4.0'
  gem "rspec"
  gem "rspec-puppet", :git => 'https://github.com/rodjek/rspec-puppet.git'
  gem "rspec-puppet-utils"
  gem "puppetlabs_spec_helper"
  gem 'hiera-puppet-helper', :git => 'https://github.com/bobtfish/hiera-puppet-helper.git'
  gem "metadata-json-lint"
  gem "rspec-puppet-facts"
  gem 'rubocop', '~> 0.39'
  gem 'rspec-puppet-facts'

  gem "puppet-lint-absolute_classname-check"
  gem "puppet-lint-leading_zero-check"
  gem "puppet-lint-trailing_comma-check"
  gem "puppet-lint-version_comparison-check"
  gem "puppet-lint-classes_and_types_beginning_with_digits-check"
  gem "puppet-lint-unquoted_string-check"
end

group :development do
  gem "travis"
  gem "travis-lint"
  gem "puppet-blacksmith"
  gem "guard-rake"
end

