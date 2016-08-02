


#and then print them
def print_header
puts "The students of Villians Academy".center(90)
puts "---------".center(90)
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  if !name.empty?
    puts "What cohort is student in?"
    cohort = gets.chomp
    cohort = :August if cohort.empty?
    puts "What country is student from?"
    country = gets.chomp
    country = :UK if country.empty?
  end
  while !name.empty? do
    students << {name: name, cohort: cohort, country: country}
    if students.count >1
      puts "Now we have #{students.count} students"
    else
      puts "Now we have #{students.count} students"
    end
    name = gets.chomp
    if !name.empty?
      puts "What cohort is student in?"
      cohort = gets.chomp
      cohort = :August if cohort.empty?
      puts "What country is student from?"
      country = gets.chomp
      country = :UK if country.empty?
    end
  end
  students
end



#def input_students
#  puts "Please enter the names of the students"
#  puts "To finish, just hit return three times"
#  students = []
#  name = gets.chomp
#  puts "What cohort are they in?"
#  cohort = gets.chomp
#  cohort = :August if cohort.empty?
#  puts "What country are they from?"
#  country = gets.chomp
#  country = :UK if country.empty?

#  while !name.empty? do
#    students << {name: name, cohort: cohort, country: country}
#  end
#nd
#    if students.count > 1
#      puts "Now we have #{students.count} students"
#    else
#      puts "Now we have #{students.count} student"
#    end


#    puts "Enter another name"
#    name = gets.strip
#    puts "cohort"
#    cohort = gets.strip
#    puts "country"
#    country = gets.strip


#  students
#  end

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
