
@students = []

#and then print them
def print_header
puts "The students of Villians Academy".center(90)
puts "---------".center(90)
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def process(selection)
    case selection
  when "1"
  input_students
  when "2"
show_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end


  def print_menu
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
  end

  def show_students
    print_header
    print_students_list
    print_footer
  end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end


  def print_students_list
   @students.each_with_index do |student, index|
       puts "#{index}: #{student[:name]}, from #{student[:country
       ]} in the (#{student[:cohort]} cohort)".center(90)
     end
 end



def print_footer
  if @students.count >1
puts "Overall, we have #{@students.size} great students".center(90)
else
 puts "Overall, we have #{@students.size} great student".center(90)
end
end

interactive_menu
