$:.unshift File.expand_path 'lib', __dir__
require 'vagrant-proxmox/version'

Gem::Specification.new do |spec|
  spec.name         = 'vagrant-proxmox'
  spec.version      = VagrantPlugins::Proxmox::VERSION
  spec.platform     = Gem::Platform::RUBY
  spec.license      = 'MIT'
  spec.authors      = ['Dirk Grappendorf', 'Tim Völpel', 'Sebastian Bremicker', 'Brian Sypher']
  spec.email        = ['bseyeph@gmail.com']
  spec.homepage     = 'https://github.com/bseyeph/vagrant-proxmox'
  spec.summary      = 'Enables Vagrant to manage virtual machines on a Proxmox server.'
  spec.description  = 'Enables Vagrant to manage virtual machines on a Proxmox server.'

  spec.required_ruby_version = '>= 2.5'
  spec.required_rubygems_version = '>= 3.0.0'
  spec.add_runtime_dependency 'activesupport', '~> 6.1.4'
  spec.add_runtime_dependency 'rest-client', '~> 2.1.0'
  spec.add_runtime_dependency 'retryable', '~> 3.0.5'
  spec.add_development_dependency 'awesome_print', '~> 1.9.2'
  spec.add_development_dependency 'cucumber', '~> 6.1.0'
  spec.add_development_dependency 'geminabox', '~> 1.4.1'
  spec.add_development_dependency 'libnotify', '~> 0.9.4'
  spec.add_development_dependency 'rake', '~> 13.0.3'
  spec.add_development_dependency 'rspec', '~> 3.10.0'
  spec.add_development_dependency 'simplecov', '~> 0.21.2'
  spec.add_development_dependency 'simplecov-rcov', '~> 0.2.3'
  spec.add_development_dependency 'timecop', '~> 0.9.4'
  spec.add_development_dependency 'webmock', '~> 3.13.0'

  spec.files = Dir.glob('lib/**/*.rb') + Dir.glob('locales/**/*.yml')
  spec.test_files = Dir.glob 'spec/**/*.rb'
  spec.require_paths = %w[lib]
end
