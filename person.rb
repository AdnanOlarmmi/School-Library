class Person
  attr_accessor :id, :name, :age, :parent_permission

  def initialize(id, age)
    @id = id
    @name = 'Unknown'
    @age = age
    @parent_permission = true
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    @parent_permission || is_of_age?
  end

  private :of_age?
  public :can_use_services?
end
