# **The Odin Project - Ruby Programming**

### **Project: [Sub Strings](substrings.rb)**

### **Introduction:**

Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument.

It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

```irb
> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

> substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }
```
Next, make sure your method can handle multiple words:
```irb
> substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

### **Solution:**

    • The function is called with two arguments, the sentence it's a string and the dictionary it's an array.
    • So I loop through the array using the `each_with_object` function declaring an empty object as a parameter.
    • In the callback, I declare `word` which is each element of the dictionary, and `memo` which is the empty object declared in the function.
    • On the next line, the `count` variable will store the number of times the dictionary word appears in the sentence.
    • To achieve this we transform the sentence to lowercase with the `downcase` function, then we use the` scan` function and by parameters, we pass it `word` to return an arrangement with the repeated words and we count it using the `size` function, let's see:
      - We have a dictionary with the word 'hi' #=> word = 'hi'
      - And this sentence: 'Hillary Clinton says hi!'
      - After passing everything to lowercase we use the `scan` function with the word as a parameter #=> 'hillary clinton says hi!'.scan('hi')
      - This will return an array of how many times 'hi' was repeated. #=> ['hi','hi']
      - We ask what is the size to know how many times it was repeated with the `size` function to store it in the `count` variable.
    • In the condition it is satisfied that if at least one word appears in the sentence it will be added to our object with the `key = word` and the `value = count` # => memo [word] = count
    • The function each_with_object returns the object declared in its parameters that was modified within the block, obtaining an object like this. # => {"below" => 1, "low" => 1}

### **References:**

* [each_with_object (Enumerable)](https://ruby-doc.org/core-2.7.1/Enumerable.html#method-i-each_with_object)
* [downcase (String)](https://ruby-doc.org/core-2.5.0/String.html#method-i-downcase)
* [scan (StringScanner)](https://ruby-doc.org/stdlib-2.6.1/libdoc/strscan/rdoc/StringScanner.html#method-i-scan)
* [size (Array)](https://ruby-doc.org/core-2.7.0/Array.html#method-i-size)