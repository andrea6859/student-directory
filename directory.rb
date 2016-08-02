


#and then print them
def print_header
puts "The students of Villians Academy".center(90)
puts "---------".center(90)
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return three times"
  students = []
  name = gets.strip
  puts "What cohort are they in?"
  cohort = gets.strip
  puts "What country are they from?"
  country = gets.strip
  while !name.empty? do
    students << {name: name, cohort: cohort, country: country}
    if students.count > 1
      puts "Now we have #{students.count} students"
    else
      puts "Now we have #{students.count} student"
    end
    puts "Enter another name"
    name = gets.strip
    puts "cohort"
    cohort = gets.strip
    puts "country"
    country = gets.strip
  end

  students
  end

  def print(students)
 i = 0
 while i < students.length
   students.each_with_index do |student, index|
       puts "#{index}: #{student[:name]}, from #{student[:country]} in the (#{student[:cohort]} cohort)".center(90)
i += 1
       end
     end
 end


  #def print(students)
 #@selected_students = []

  # students.each do |student|
  #   if student[:name].length < 12 && student[:name][0] == "A"
  #     @selected_students << student
  #   end
  # end
  #     @selected_students.each_with_index do |sel_student, index|
  #     puts "#{index}: #{sel_student[:name]}, from #{sel_student[:country]} in the (#{sel_student[:cohort]} cohort)".center(90)
  #     end
 #end




def print_footer(students)
  if students.count >1
puts "Overall, we have #{students.size} great students".center(90)
else
 puts "Overall, we have #{students.size} great student".center(90)
end
end

students = input_students

print_header
print (students)
print_footer(students)
