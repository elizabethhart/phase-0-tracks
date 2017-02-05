# require gems

require 'sqlite3'
require 'faker'

# create SQLite3 database

db = SQLite3::Database.new("grades.db")

# create table

grades_log = <<-SQL 
	CREATE TABLE IF NOT EXISTS grades(
		id INTEGER PRIMARY KEY,
		student_name VARCHAR(255),
		assignment_name VARCHAR(255),
		grade INT
	)
SQL

db.execute(grades_log)

# method for logging grades

def log_grade(db, student_name, assignment_name, grade)
	db.execute("INSERT INTO grades (student_name, assignment_name, grade) VALUES (?, ?, ?)", [student_name, assignment_name, grade])
end