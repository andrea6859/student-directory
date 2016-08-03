@students = []

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
  name = STDIN.gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
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
  File.open(filename, "w") do |file|
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
end

end

def load_students
  puts "Enter file name to open"
  filename = STDIN.gets.chomp
  File.open(filename, "r") do |file|
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
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
