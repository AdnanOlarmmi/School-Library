require_relative 'person'

class Teacher < Person
    def initialize(id, age, specialization)
        super(id, age)
        @specialization = specialization
    end

    def get_specialization
        @specialization
    end

    def set specialization(specialization)
        @specialization = specialization
    end
end