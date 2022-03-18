class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)

    # parse string into array using split()
    if str.length() == 0
      return str
    end


    # split the string into an array of words, parsed by spaced
    wordArray = str.split()
    
    # find the length 
    a = wordArray.length

    # initialize x to 0 for first word in array
    x = 0

    # while loop to go through all of the words and replace is necessary 
    while x < a do

        # check the length of the word after discarding special characters
        currentWord = wordArray[x].gsub(/[\W]/, '')

        # find length of current word
        c = currentWord.length

        # check the word has more than 4 characters
      if c >= 5

          # store first letter in word in charCheck
          uppercaseCheck = currentWord[0]

          # check if first letter is uppercase, if so replace with capital M
          if uppercaseCheck == uppercaseCheck.upcase

            wordArray[x] = wordArray[x].gsub(/[\w]/, '') 
            wordArray[x] = wordArray[x].prepend("Marklar")

          else 

            wordArray[x] = wordArray[x].gsub(/[\w]/, '') 
            wordArray[x] = wordArray[x].prepend("marklar")

          end
      
      end

      # increment
      x += 1
   
  end

#return the array as a string
return wordArray.join(' ')
 
end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

  def self.even_fibonacci(nth)
   
    
    if nth <= 2 
      return 0
    end
  
    # set up the necessary variables in order to loop through _only_ the even numbers of the sequence, using 0 and 2 here will not produce a different seq than 1 and 1
    secondNumber = 0
    firstNumber = 2
   
    # initialize counter and sum
    counter = 3
    sum = 2

  # a while loop that will iterate through _only_ the even numbers of the fibbonaci sequence
   while counter <= nth do
    
    counter += 3
    
    # break early if the counter has exceeded the limit
    if nth <= counter
       break
    end

    # calculate next even number in the fibonacci sequence
    # proof for this formula can be found here: https://www.geeksforgeeks.org/nth-even-fibonacci-number/

    nextNumber = 4 * firstNumber + secondNumber

    # increment numbers and add to the sum 
    secondNumber = firstNumber
    firstNumber = nextNumber
    sum = sum + firstNumber

  end
   
    return sum
  
  end

end