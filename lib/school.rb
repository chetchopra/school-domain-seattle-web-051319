class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade].length == 0
      @roster[grade] = [name]
    else 
      @roster[grade] << name
    end
  end
  
end