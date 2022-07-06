def inclination(number, word_for_1, word_for_234, word_for_other)

  return word_for_other if (11..14).include? number%100

  last_digit = number % 10

  return word_for_1 if last_digit == 1
  return word_for_234 if last_digit.between?(2,4)
  word_for_other
end
