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
    binding.pry
    # @roster.each do |grade|
    #   g2 = grade[1].sort
    #   grade[1] = g2
    # end
  end
end