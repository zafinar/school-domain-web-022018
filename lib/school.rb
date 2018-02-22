class School
def initialize(name,roster = {})
@name = name
@roster = roster
end

attr_reader :name, :roster

def add_student(name,grade)
  roster = @roster
    if roster.key?(grade) == false
      roster[grade] = []
    end
  roster[grade] << name
  @roster = roster
end

def grade(year)
@roster[year]
end

def sort
@roster.each {|grade,name| @roster[grade].sort!}

end

end
