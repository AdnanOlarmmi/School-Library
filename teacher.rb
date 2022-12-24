require_relative 'person'

class Teacher < Person
  attr_accessor :type, :specialization

  def initialize(age, _specialization, name, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = 'Unknown'
    @type = 'Teacher'
  end

  def can_use_services?
    true
  end
end

teach = Teacher.new('11', 'Adnan', 'ad')

puts teach.name, teach.age, teach.specialization
