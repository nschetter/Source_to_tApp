require 'sqlite3'

DATABASE = SQLite3::Database.new("source.db")
 
DATABASE.execute("CREATE TABLE IF NOT EXISTS reports (id INTEGER PRIMARY KEY, gps_coordinates TEXT, location TEXT, description TEXT, concerns TEXT, help TEXT, other TEXT, picture TEXT);")
DATABASE.execute("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT);")
 
DATABASE.results_as_hash = true