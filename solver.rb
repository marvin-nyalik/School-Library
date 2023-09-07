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

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?
    number.to_s
  end
  
  def reverse(string)
    left = 0
    right = string.size - 1
    while left <= right
      string[left], string[right] = string[right], string[left]
      left += 1
      right -= 1
    end
    string
  end

end
