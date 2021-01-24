# code here!
class School

    attr_accessor :roster

    def initialize(roster)
    @roster = {}
    end

    
    def add_student(student_name, grade)
        if @roster[grade]
          @roster[grade] << student_name
        else
          @roster[grade] = []
          @roster[grade] << student_name
        end
    end
   

    def grade(grade)
        self.roster[grade]
    end


    def sort
        self.roster.each do |grade, students|
            students.sort!
        end
    end


end