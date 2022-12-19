class Person
    def initialize(id, age)
        @id = id
        @name = "Unknown"
        @age = age
        @parent_permission = true
    end

    def get_id
        @id
    end

    def set_name(name)
        @name = name
    end
    def get_name
        @name
    end

    def set_age(age)
        @age = age
    end
    def get_age
        @age
    end

    def is_of_age?
        @age >= 18
    end
    def can_use_services?
        @parent_permission || is_of_age?
    end

    private :is_of_age?
    public :can_use_services?
end




