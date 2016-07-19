# The digital root of a number is the reduction of that number to a single digit by adding the individual digits that comprise that number.
# This process is repeated until there is only a single positive digit remaining.
# If we use "12345" as an example, 1 + 2 + 3 + 4 + 5 = 15, 1 + 5 = 6. Therefore, the digital root of "12345" is "6."

class Numeric
  def digital_root
    if self.abs < 10
      self.abs
    else
      self.to_s.split("").map { |i| i.to_i }.reduce(:+).digital_root
    end
  end
end

number = 1234
puts number.digital_root == 1 # true
puts 123.digital_root == 6 # true
puts 11111.digital_root == 5 # true
