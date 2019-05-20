def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} #{student[:hobby]} #{student[:country]} #{student[:height]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names, hobbies, country of birth and height of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  puts "Enter name"
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Enter hobby"
    hobby = gets.chomp
    puts "Enter country of birth"
    country = gets.chomp
    puts "Enter height"
    height = gets.chomp
    # add the student hash to the array
    students << {name: name, hobby: hobby, country: country, height: height, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)