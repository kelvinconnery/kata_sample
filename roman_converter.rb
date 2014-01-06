class RomanConverter

  MAP = [[1000,'M'],[900,'CM'],[500,'D'],[400,'CD'],[100,'C'],[90,'XC'],[50, 'L'], [40, 'XL'], [10, 'X'], [9, 'IX'] , [5,'V'] , [4,'IV'] , [1,'I']]

  def convert(number)
    roman = ''

    MAP.each do |range|
      while number >= range.first
        roman += range.last
        number -= range.first
      end
    end
    
    roman
  end

end