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
	db.execute("SELECT * FROM grades")
end

# method for determining what the user wants to view

def question_user(response)
	if response == "y"
		log_grade
	elsif response == "n"
		puts "Do you want to view your previously entered grades? (y/n)"
		response2 = gets.chomp
		if response2 == "y"
			p view_grades
		else
			puts "Goodbye"
		end
	else
		puts "This is an invalid response"
	end
end

# driver code for users adding data

puts "Do you want to enter grades? (y/n)"
response = gets.chomp
question_user(response)



