def is_palindrome(word)
  return word.downcase == word.reverse.downcase ? "#{word} is palindrome" : "#{word} is not palindrome"
end

puts is_palindrome('Madam')
