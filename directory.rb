


#and then print them
def print_header
puts "The students of Villians Academy".center(90)
puts "---------".center(90)
end

def interactive_menu
  students =[]
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
  when "1"
    students = input_students
  when "2"
    print_header
    print(students)
    print_footer(students)
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end
  end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end


  def print(students)
 i = 0
 while i < students.length
   students.each_with_index do |student, index|
       puts "#{index}: #{student[:name]}, from #{student[:country
       ]} in the (#{student[:cohort]} cohort)".center(90)
i += 1
       end
     end
 end



def print_footer(students)
  if students.count >1
puts "Overall, we have #{students.size} great students".center(90)
else
 puts "Overall, we have #{students.size} great student".center(90)
end
end

interactive_menu
students = input_students


print_header
print (students)
print_footer(students)
