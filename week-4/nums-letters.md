# 4.2 Numbers, Letters, and Variable Reflection

## 1. What does puts do?


` puts ` simply tells the computer to print the output (whatever you typed after ` puts `). It is different from ` print ` in that the output is on a new line.

## 2. What is an integer? What is a float?


An integer is a number without decimal points, or a whole number (i.e. 1, 2, 3). A float is a number with a decimal point (i.e. 1.0, 2.4, 3.57). Most programs use integers as it is more relevant to real life applications.


## 3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?


To put it simply, the output for float division will be a float, whereas the output for integer disvion will be an integer! Meaning that ` 4.0 / 2.0 => 2.0 ` and ` 4 / 2 => 2 `. But you might wonder, what would be the output for ` 5 / 2 ` if it only returns integers? The output will always round down to an integer. So, ` 5 / 2 => 2 `, which doesn't make sense in terms of what we consider the "right" answer to be, but totally makes sense in applicable programs! If you have $5, how many $2 frappuccinos (Yeah I know, I wish they were actually $2 too) would you be able to purchase? Only two! Not 2.5. Unfortunately.

## Ruby Programs

### Hours in a Year

```ruby
puts 24 * 365
```


### Minutes in a Decade

```ruby
puts 60 * 24 * 365 * 10
```

## Links to Ruby Files

* [4.2.1 Defining Varibles](https://github.com/shawnspears/phase-0/blob/master/week-4/defining-variables.rb)
