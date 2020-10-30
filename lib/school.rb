
# Consequently, this program could be understood as a domain model. 
# It takes the world of the auto factory, and maps the constituents 
# of that world into your program.
require 'pry'

class School # Create a class, School, in the lib directory that can be initialized with a name.

    attr_accessor :name, :roster

    def initialize(name)
        @name = name #instance variables will equal these arguments
        @roster = {} 
        #name is returning School
    end

    # The value of each key will be an array of student names!!!!!!!!!!
    def add_student(name, grade)
        roster[grade] ||= [] #if roster gives us something, continue. if not, set it equal to thing on right
        roster[grade] << name
    end


    def grade(grade)
        roster[grade]
    end
    # A method, grade, should take in an argument of a grade and return all of the students in that grade

   
    def sort
        sorted_list = {} # empty hash for storage
        roster.collect do |grade, name| # sort the roster fill of grades: names and parse them
            sorted_list[grade] = name.sort # have to to provide key first before adding to hash
            # then put the sorted names into hash by their grade
        end
            sorted_list #cut, print
    end
    
    # You should be able to get a sorted list of all the students where the strings in the student arrays 
    # are sorted alphabetically. Note that since hashes are unordered by nature, the order of the keys does 
    # not matter here, just the order of the student's names within each array.

    # binding.pry

end

# ||= will be used?

# ruby school = School.new("Bayside High School")
# school.add_student("Zach Morris", 9)
# school.roster #=> {9 => ["Zach Morris"]} 
# school.grade(9)  #=> ["Zach Morris", "AC Slater"] 
# school.sort #=> {9 => ["AC Slater", "Zach Morris"], 10 => ["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]} 