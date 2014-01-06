class RomanConverter

  MAP = [[50, 'L'], [40, 'XL'], [10, 'X']]

  def convert(number)
    roman = ''

    MAP.each do |range|
      while number >= range.first
        roman += range.last
        number -= range.first
      end
    end
    
    if number >= 5 && number < 9
      roman += 'V'
      number -= 5
    end

    if number == 4
       roman += 'IV'
    elsif number == 9
      roman += 'IX'
    else
      roman += 'I' * number
    end

    roman
  end

end