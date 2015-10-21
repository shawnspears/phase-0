# 4.2 Numbers, Letters, and Variable Reflection

## 1. What does puts do?


` puts ` simply tells the computer to print the output (whatever you typed after ` puts `). It is different from ` print ` in that the output is on a new line.

## 2. What is an integer? What is a float?


An integer is a number without decimal points, or a whole number (i.e. 1, 2, 3). A float is a number with a decimal point (i.e. 1.0, 2.4, 3.57). Most programs use integers as it is more relevant to real life applications.



## 3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?


To put it simply, the output for float division will be a float, whereas the output for integer disvion will be an integer! Meaning that ` 4.0 / 2.0 => 2.0 ` and ` 4 / 2 => 2 `. But you might wonder, what would be the output for ` 5 / 2 ` if it only returns integers? The output will always round down to an integer. So, ` 5 / 2 => 2 `, which doesn't make sense in terms of what we consider the "right" answer to be, but totally makes sense in applicable programs! If you have $5, how many $2 frappuccinos (Yeah I know, I wish they were actually $2 too) would you be able to purchase? Only two! Not 2.5. Unfortunately.


## 4. How does Ruby handle addition, subtraction, multiplication, and division of numbers?


Ruby essentially handles arithmetic very similarly to a simple calculator with the exception of having to indicate that you want a floating output (but this is easy because all you have to do is type out the arithmetic with floating numbers). All of the symbols used to indicate different math operations are the same as what we are used to in a traditional math setting. Addition uses ` + `, subtraction uses ` - `, multiplication uses ` * ` and division uses ` / `.


## 5. What is the difference between integers and floats?


Floating numbers have a decimal point. That's it!


## 6. What is the difference between integer and float division?


Whereas float division will result in a floating number output that we would conventionally consider the "right" or "precise" answer, integer division results in an integer output and thus any division operation that doesn't have a remainder of 0 has an output that will be rounded down to an integer.


## 7. What are strings? Why and when would you use them?


Strings are synonymous with text. You should use them whenever you need to write text, otherwise Ruby will not comphrehend that you're using text.


## 8. What are local variables? Why and when would you use them?


Local variables are used to save information to be used later.


## 9. How was this challenge? Did you get a good review of some of the basics?


It was fun getting back to using Ruby as we did when we were applying to DBC. I thought that Pine's book did a lovely job of describing the basics and foundational concepts of numbers and text in Ruby without being overly pedantic and overwhelming. Thus, I have a solid understanding of the basic concepts that we went over in the challenges! I will, however, have to look through additional resources to get a more comphrehensive look at some of the finer details.


## Ruby Programs

### Hours in a Year

```ruby
puts 24 * 365
```


### Minutes in a Decade

```ruby
puts 60 * 24 * 365 * 10
```

## Links to my Ruby Files

* [4.2.1 Defining Varibles](https://github.com/shawnspears/phase-0/blob/master/week-4/defining-variables.rb)
* [4.2.2 Simple String Methods](https://github.com/shawnspears/phase-0/blob/master/week-4/simple-string.rb)
* [4.2.3 Local Variables and Basic Arithmetical Expressions](https://github.com/shawnspears/phase-0/blob/master/week-4/basic-math.rb)
