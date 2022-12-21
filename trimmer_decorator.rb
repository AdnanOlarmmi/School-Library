require_relative 'base_decorator'

class TrimmerDecorator < BaseDecorator

    def initialize(nameable)
        @nameable = nameable
    end
  
    def correct_name
        @nameable.correct_name.delete(@nameable.correct_name[10..-1])
    end
end