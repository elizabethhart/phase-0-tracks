# Release 0: Implement a Simple Search

ary = [1,2,3,4,23,6]
def simple_array_search (array, integer)
  x = 0
  while x < array.length
      if array[x] == integer
          return x
      end
  x += 1
  end
end

p simple_array_search(ary, 23)
p simple_array_search(ary, 100)

# Release 1: Calculate Fibonacci Numbers

def fib(number)
  array = []
  if number == 0
      return array
  elsif number == 1
      array << 0
      return array
  elsif number == 2
      array << 0
      array << 1
      return array
  elsif number > 2
      index = 2
      array << 0
      array << 1
      while index < number
          array << array[index - 1] + array[index - 2]
          index += 1
      end
      return array
  end 
end

p fib(100)[-1]

# Release 2: Sort an Array (Method 1)

array = [1,2,3,4,5,6,7,8,9,10,13,18,45,24,68]

def sort_even_and_odd_numbers_seperately (array)
    array2 = []
    array3 = []
    x = 0
    while x < array.length
        if array[x].even?
            array2 << array[x]
        else
            array3 << array[x]
        end
        x += 1
    end
    return array2 + array3
end

p sort_even_and_odd_numbers_seperately(array)

# Release 2: Sort an Array (Method 2)

array = ["acab", "coolly", "awesome", "hippopatamus", "timothy", "elizabeth", "to", "a"]

def simple_words_to_complex_words (string_array)
    i = 0
      while i < string_array.length
        n = i + 1
        while n < string_array.length 
            if string_array[i].length > string_array[n].length
                string_array[i], string_array[n]=string_array[n], string_array[i]
            end
            n += 1
        end
        i += 1
        end
    return string_array
end

p simple_words_to_complex_words (array)