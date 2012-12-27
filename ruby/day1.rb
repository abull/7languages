#print "Hello, world."

puts 'Hello, world.'

#Find the index of the word "Ruby" in the string "Hello, Ruby,"

index = "Hello, Ruby," =~ /Ruby/
puts index

#print your name 10 times
10.times do
  puts 'Andrew'
end

#Print the sentence This is number n for n in the range 1 to 10

10.times do |n|
  puts "This is number #{n}"
end

#Number guessing game
puts  'I\'m thinking of a number between 1 and 10, can you guess what it is?'
n = rand(10)
loop do
  n2 = gets.to_i
  if n2 > n
    puts 'That\'s too high.'
  elsif n2 < n
    puts 'that\'s too low'
  else
    puts "Correct, the number was #{n}"
    break
  end
end
