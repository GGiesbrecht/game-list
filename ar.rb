# frozen_string_literal: true

# Load the required gems/libraries.
require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'sqlite3'
require 'logger'
require 'csv'
require 'rails'

# Load all of our ActiveRecord::Base objects.
require_relative 'app/models/application_record.rb'
require_relative 'app/models/comment.rb'
require_relative 'app/models/game.rb'
require_relative 'app/models/genre_game.rb'
require_relative 'app/models/genre.rb'

# Establish our connection to our serverless sqlite3 database.
ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: 'db/development.sqlite3'

# For debugging purposes, uncomment this line to see the SQL generated by ActiveRecord:
ActiveRecord::Base.logger = Logger.new(STDOUT)
