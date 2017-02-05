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

# driver code for users adding data

response = ""
until response == "done"
	puts "Please enter the student's name, or type done to exit"
	student_name = gets.chomp
	if student_name == "done"
		response = "done"
	else
		puts "Please enter the assignment name"
		assignment_name = gets.chomp
		puts "Please enter the grade"
		grade = gets.chomp
		log_grade(db, student_name, assignment_name, grade)
	end
end


