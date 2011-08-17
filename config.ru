# This file is used by Rack-based servers to start the application.

# require ::File.expand_path('../config/environment',  __FILE__)
require "config/environment"

# needed by Carrierwave on Heroku
use Rack::Static, :urls => ['/carrierwave'], :root => 'tmp'

run ArtwareClients::Application
