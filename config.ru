require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


require 'rubygems'

#Models
require_relative 'models/song.rb'
require_relative 'models/artist.rb'
require_relative 'models/playlist.rb'


#Controlers
require_relative 'controllers/home_controller'
require_relative 'controllers/artists_controller'
require_relative 'controllers/songs_controller'
require_relative 'controllers/playlists_controller'



ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
after { ActiveRecord::Base.connection.close }




run Sinatra::Application

