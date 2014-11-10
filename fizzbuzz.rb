class FizzBuzz

  def initialize num_start, num_end
    @start = num_start
    @end = num_end
  end

  def result
     ( @start..@end ).map do |item|
      translate(item)
    end
  end

  def translate (number)
    fizz = ( number % 3 == 0 ) ? "fizz" : nil
    buzz = ( number % 5 == 0 ) ? "buzz" : nil
    fuzz = ( number % 2 == 0 ) ? "fuzz" : nil
    if fizz || buzz
      "#{fizz}" + "#{buzz}"
    elsif fuzz
      "#{fuzz}"
    else
      number
    end
  end
end