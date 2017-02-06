# require gems

require 'sqlite3'

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

def log_grade
	db = SQLite3::Database.new("grades.db")
	complete = false
	until complete
		puts "Please enter the student's name, or type done to exit"
		student_name = gets.chomp
		if student_name == "done"
			complete = true
		else
			puts "Please enter the assignment name"
			assignment_name = gets.chomp
			puts "Please enter the grade"
			grade = gets.chomp
			db.execute("INSERT INTO grades (student_name, assignment_name, grade) VALUES (?, ?, ?)", [student_name, assignment_name, grade])
		end
	end
end

# method for viewing grades

def view_grades
	db = SQLite3::Database.new("grades.db")
	p db.execute("SELECT * FROM grades")
end

# method for determining what the user wants to view

def question_user(response)
	if response == "1"
		log_grade
	elsif response == "2"
		view_grades
	else
		puts "This is an invalid response"
	end
end

# driver code for users adding data

puts "Welcome to your gradebook!"
puts "Do you want to (1) enter grades OR (2) view grades? Please enter a number:"
response = gets.chomp
question_user(response)



