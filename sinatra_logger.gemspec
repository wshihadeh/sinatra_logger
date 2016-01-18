require File.expand_path('../lib/sinatra_logger/version', __FILE__)

Gem::Specification.new do |gem|
  
  gem.name        = 'sinatra_logger'
  gem.version     = SinatraLogger::VERSION
  gem.summary     = "Sinatra Logger!"
  gem.description = "Provides logining functionality for Sinatra Applications"
  gem.authors     = ["Al-waleed Shiahdeh"]
  gem.email       = 'wshiahdeh@live.com'
  gem.homepage    = 'https://github.com/wshihadeh/sinatra_logger'
  
  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ["lib"]
  gem.license       = 'MIT'

end
