# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

# needed by Carrierwave on Heroku
use Rack::Static, :urls => ['/carrierwave'], :root => 'tmp'

run ArtwareClients::Application
