require 'pry'

class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = [name]
    else 
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    @roster = @roster.sort
    @roster.each do |grade|
    #   grade = grade.sort
      g2 = grade
      binding.pry
    end
  end
end