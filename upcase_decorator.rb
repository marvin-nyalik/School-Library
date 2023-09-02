require_relative 'base_decorator'
class UpcaseDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.upcase
  end
end
