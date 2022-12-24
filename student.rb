require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, _classroom, parent_permission: true)
    super(age, name, parent_permission)
    @classroom = 'Unknown'
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
