class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2)[1]
    end

    numbers.gsub!("\n", delimiter)
    numbers.split(delimiter).map(&:to_i).sum
  end
end