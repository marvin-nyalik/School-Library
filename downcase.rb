require_relative 'base_decorator'
class DowncaseDecorator
  def correct_name
    @nameable.correct_name.downcase
  end
end
