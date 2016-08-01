


#and then print them
def print_header
puts "The students of Villians Academy"
puts "---------"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return three times"
  students = []
  name = gets.chomp
  puts "What cohort are they in?"
  cohort = gets.chomp
  puts "What country are they from?"
  country = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: cohort, country: country}
    if students.count > 1
      puts "Now we have #{students.count} students"
    else
      puts "Now we have #{students.count} student"
    end
    puts "Enter another name"
    name = gets.chomp
    puts "cohort"
    cohort = gets.chomp
    puts "country"
    country = gets.chomp
  end
    #if cohort.empty? do students << {cohort: november}
    #end

  students
  end

  def print(students)
  @selected_students = []

    students.map do |student|
      if student[:name].length < 12
        @selected_students << student
        @selected_students.each  do |sel_student|
          puts "#{sel_student[:name]}, (#{sel_student[:cohort]} cohort)"
        end
      end
    end
  end

  #def print_footer(students)
  #  puts "Looks like we have #{@selected_students.size} student(s) that have less than 12 characters in their names"
  #end


def print_footer(students)
  if @selected_students.count >1
puts "Overall, we have #{@selected_students.count} great students"
else
 puts "Overall, we have #{@selected_students.count} great student"
end
end

students = input_students

print_header
print (students)
print_footer(students)
