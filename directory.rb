@students = []
@name=()
@cohort=()
require 'csv'


def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to file"
  puts "4. Load the list from file"
  puts "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end


def process(selection)
  case selection
  when "1"; puts "Thank you. Option 1 selected: Input Students"; input_students
  when "2"; puts "Thank you. Option 2 selected: Show the Students";show_students
  when "9"; puts "Thank you. Option 9 selected: Goodbye!";exit
  when "3"; puts "Thank you. Option 3 selected: Save students to file";save_students
  when "4"; puts "Thank you. Option 4 selected: Load students from file";load_students
  else; puts "I don't know what you meant, try again"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  @name = STDIN.gets.chomp
  puts "Please enter the cohort"
  @cohort=STDIN.gets.chomp
  while !@name.empty? do
    students_hash
    puts "Now we have #{@students.count} students"
    puts "enter the next student"
    @name = STDIN.gets.chomp
    puts "enter cohort"
    @cohort=STDIN.gets.chomp
  end
end

def students_hash
  @students << {name: @name, cohort: @cohort}
end

def load_students
  puts "Enter file name to open"
  filename = STDIN.gets.chomp
  CSV.foreach(filename, "r") do |row|
    @name, @cohort = row
    students_hash
  end
end


def show_students
  print_header
  print_student_list
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  puts "Enter file name"
  filename = STDIN.gets.chomp
  CSV.open(filename, "w") do |csv|
  @students.each do |student|
    csv << [student[:name], student[:cohort]]
  end
end
end




#def try_load_students
#  filename = ARGV.first
#  filename = "students.csv" if filename.nil?
#  if File.exists?(filename)
#    load_students(filename)
#     puts "Loaded #{@students.count} from #{filename}"
#  else # if it doesn't exist
#    puts "Sorry, #{filename} doesn't exist."
#    exit # quit the program
#  end
#end

#try_load_students
interactive_menu
