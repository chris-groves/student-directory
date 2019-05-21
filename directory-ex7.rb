def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names and cohorts of the students"
  puts "To finish, just hit return three times"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp.to_sym
  cohort = gets.chomp.to_sym
  # while the name is not empty, repeat this code
  while true do
    if name.empty? == true && cohort.empty? == true
      break
    elsif name.empty? == true && cohort.empty? == false
      name = "unknown"
    elsif name.empty? == false && cohort.empty? == true
      cohort = "unknown"
    end

    puts "Student name: #{name}"
    puts "Student cohort: #{cohort}"
    puts "Are these correct? Enter 'yes' or 'no' then press enter"
    confirmation = gets.chomp
      if confirmation == 'yes'
      # add the student hash to the array
      students << {name: name, cohort: cohort}
      puts "Now we have #{students.count} students"
      else
      end
    # get another name from the user
    name = gets.chomp
    cohort = gets.chomp
  end
  # return the array of students
  students
end
#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)