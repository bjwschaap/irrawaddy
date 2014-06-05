# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','irrawaddy','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'irrawaddy'
  s.version = Irrawaddy::VERSION
  s.author = 'Bastiaan Schaap'
  s.email = 'b.schaap@siteminds.nl'
  s.homepage = 'https://github.com/bjwschaap/mangabey'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Irrawaddy is a RESTful orchestration server'
  s.description = <<eos
                  TBD.
eos
  s.license = 'MIT'
  s.files = `git ls-files`.split("\n")
  s.require_paths << 'lib'
  s.has_rdoc = false
  s.bindir = 'bin'
  s.executables << 'irrawaddy'
  s.required_ruby_version = '~> 2.0'
  s.add_development_dependency('rake', '~> 10.2' )
  s.add_development_dependency('rdoc', '~> 4.1')
  s.add_development_dependency('aruba', '~> 0.5')
  s.add_development_dependency('shotgun', '0.9')
  s.add_development_dependency('passenger', '~> 4.0')
  s.add_development_dependency('rspec' ,'~> 2.14')
  s.add_development_dependency('capybara', '~> 2.2')
  s.add_development_dependency('cucumber-sinatra', '~> 0.5.0')
  s.add_runtime_dependency('sinatra','1.4.5')
  s.add_runtime_dependency('sinatra-contrib','1.4.2')
  s.add_runtime_dependency('sqlite3', '1.3.9')
  s.add_runtime_dependency('dynflow', '0.6.2')
  s.add_runtime_dependency('sequel', '4.11.0')
end
