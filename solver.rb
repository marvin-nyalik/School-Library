class Solver
  def factorial(number)
    return 1 if number.zero?
    raise RangeError, 'Only positive values allowed' if number.negative?

    fact = 1
    number.times do |num|
      fact *= num + 1
    end
    fact
  end

end
