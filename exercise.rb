class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".

  #input: a string of words
  #output: same string with the words with lengths >= 5 replaced with "Marklar" or "marklar"
  #contraints/complexity: O(n)
  #edge cases: ignore punctuation, assume str can be any length

  def self.marklar(str)
    return str.gsub(/\w{5,}/) do |word|
        if word == word.capitalize
            "Marklar"
        else
            "marklar"
        end
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

  #input: a number
  #output: sum of all even Fibonacci numbers up to nth
  #constraints/complexity: O(n)
  #edge cases: none

  def self.even_fibonacci(nth)
    num_1, sum, i, num_2 = 0, 0, 0, 1
    while i <= nth - 2
      current = num_1 + num_2
      sum += current if current % 2 ==0
      num_1 = num_2
      num_2 = current
      i += 1
    end
    return sum
  end
end
