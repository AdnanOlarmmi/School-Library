require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(id, age, specialization)
    super(id, age)
    @specialization = specialization
  end
end
