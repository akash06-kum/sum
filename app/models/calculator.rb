class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2)[1]
    end

    numbers.gsub!("\n", delimiter)
    numbers_arr = numbers.split(delimiter).map(&:to_i)

    negatives = numbers_arr.select { |num| num < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    numbers_arr.sum
  end
end