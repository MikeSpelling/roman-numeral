class NumeralConverter
  attr_reader :result

  def initialize(arg)
    @request = arg
    if @request.is_a?(String)
      raise RuntimeError.new("Invalid Numeral") if !@request.upcase[/[IVXLCDM]/]
      @sortedNumerals = []
      value = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
      @request.upcase.split(//).each do |numeral|
        @sortedNumerals << value[numeral]
      end
    elsif @request.is_a?(Fixnum)
      raise RuntimeError.new("Invalid Number") if @request < 0 || @request >= 4000
      @number = @request
    end
  end

  def convert
    @request.is_a?(Fixnum) ? convert_number : convert_numeral
  end

  def convert_numeral
    @result = @sortedNumerals[@sortedNumerals.size-1]
    (@sortedNumerals.size-1).times do |i|
      num = @sortedNumerals[@sortedNumerals.size-i-1]
      prevNum = @sortedNumerals[@sortedNumerals.size-i-2]
      num > prevNum ? @result -= prevNum : @result += prevNum
    end
  end

  def convert_number
    @result = ""
    tempNum = @number
    if tempNum >= 1000
      (tempNum / 1000).times do
        @result << "M"
      end
      tempNum -= (tempNum / 1000) * 1000
    end
    if tempNum >= 900
      @result << "CM"
      tempNum -= 900
    end
    if tempNum >= 500
      (tempNum / 500).times do
        @result << "D"
      end
      tempNum -= (tempNum / 500) * 500
    end
    if tempNum >= 400
      @result << "CD"
      tempNum -= 400
    end
    if tempNum >= 100
      (tempNum / 100).times do
        @result << "C"
      end
      tempNum -= (tempNum / 100) * 100
    end
    if tempNum >= 90
      @result << "XC"
      tempNum -= 90
    end
    if tempNum >= 50
      (tempNum / 50).times do
        @result << "L"
      end
      tempNum -= (tempNum / 50) * 50
    end
    if tempNum >= 40
      @result << "XL"
      tempNum -= 40
    end
    if tempNum >= 10
      (tempNum / 10).times do
        @result << "X"
      end
      tempNum -= (tempNum / 10) * 10
    end
    if tempNum == 9
      @result << "IX"
      tempNum -= 9
    end
    if tempNum >= 5
      (tempNum / 5).times do
        @result << "V"
      end
      tempNum -= (tempNum / 5) * 5
    end
    if tempNum == 4
      @result << "IV"
      tempNum -= 4
    end
    if tempNum >= 1
      (tempNum / 1).times do
        @result << "I"
      end
    end
  end

end

Given /^the numeral "([^"]*)" has been entered$/ do |numeral|
  @converter = NumeralConverter.new(numeral)
end

Given /^the number "([^"]*)" has been entered$/ do |number|
  @converter = NumeralConverter.new(number.to_i)
end

When /^I convert$/ do
  @converter.convert
end

Then /^the result is "([^"]*)"$/ do |expected_value|
  @converter.result.to_s.should == expected_value.to_s
end