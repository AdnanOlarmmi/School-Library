require_relative 'nameable'

class TrimmerDecorator < Nameable

    def initialize(nameable)
        @nameable = nameable
    end

    def correct_name
        @nameable.correct_name.strip
    end
end