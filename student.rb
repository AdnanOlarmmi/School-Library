require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(id, age, classroom)
    super(id, age)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

stu = Student.new(1, 18, 'Math')

puts stu.get_classroom
