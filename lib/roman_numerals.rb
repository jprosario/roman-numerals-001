require 'pry'

class Integer

  def to_roman
    roman_dict = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}
    new_roman = ''
    num = self
    roman_dict.each do |k,v|
        while k <= num
            new_roman << v
            num -= k
        end
    end
    new_roman
  end
end