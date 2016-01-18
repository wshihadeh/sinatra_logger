# Sinatra Logger 
The aim of this gem is to provide logging functionaly to Sinatra application 
# Install
## In your Gemfile add:
    ~> gem "sinatra_logger", '0.1.0'
## Then run
    ~> bundle install
# Usage 
##  In application.rb
    require 'sinatra_logger'
## Create Loggers
    LOGGER = SinatraLogger::Loggers.file_logger("sinatra.log")
    LOGGER = SinatraLogger::Loggers.stdout_logger
## In the Application class
    configure :development, :production do
      enable :logging
      use Rack::CommonLogger, LOGGER
    end
