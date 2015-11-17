def roman_numerals(n)
  roman_nums = %w(M CM D CD C XC L XL X IX V IV I)
  roman_vals = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  str = ""

  until n == 0
    next_val = nil
    next_str = nil

    roman_vals.each_with_index do |rval, i|
      next_val = rval
      next_str = roman_nums[i]
      break if n >= rval
    end

    until n < next_val
      str << next_str
      n -= next_val
    end

  end

  str
end

p roman_numerals(350)
p roman_numerals(1653)
p roman_numerals(2015)
p roman_numerals(1965)
