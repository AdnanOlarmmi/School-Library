class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label, _students)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
  end
end
