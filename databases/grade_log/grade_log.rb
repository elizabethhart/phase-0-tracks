# require gems

require 'sqlite3'
require 'faker'

# create SQLite3 database

db = SQLite3::Database.new("grades.db")