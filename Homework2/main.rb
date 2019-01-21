# 1
puts("Hello, World\n")

# 2
my_string = "Hello, World"

my_string.split.each_with_index do |word, index|
  if word.eql?("World")
    puts(index)
  end
end

# 3.1
(1..10).each do |number|
  puts("This is funny monkey ##{number}!")
end

# 3.2
def loop()
  output = []

  1.upto 10 do |item|
    output << yield("This is funny monkey ##{item}!")
  end
  output
end

puts loop {|i| i}

# 3.3
x = 0
while x < 10
  puts("This is funny monkey ##{x + 1}!")
  x += 1
end

# 4
puts("Welcome to the game")
user_guessed = false
random_value = rand(1000) + 1
while !user_guessed
  puts("Enter a number between 1 and 1000")
  guessed_value = Integer(gets)

  if guessed_value < random_value
    puts("Your guess is low, go up!")
  elsif guessed_value > random_value
    puts("Your guess is high, go down!")
  else
    puts("You won!")
    user_guessed = true
  end
end

# 5
def convert_to_type_strings(array)
  output = []
  array.each do |item|
    output << yield(item)
  end
  output
end

data = ['hello', 0, :sym, 3.4, "world", true, [0..3]]
puts "#{convert_to_type_strings(data) {|x| x.class}} \n"

# 6
class Array
  def convert_to_type_strings
    output = []
    self.map {|item| output << item.class}
    output
  end
end

data = ['hello', 0, :sym, 3.4, "world", true, [0..3]]
puts "#{data.convert_to_type_strings} \n"

# 7
def tabulate_sections(map)
  percussion = 0
  woodwind = 0
  brass = 0
  strings = 0

  map.each do |key|
    case key
    when :piano
      percussion = percussion + 1
    when :clarinet
      woodwind = woodwind + 1
    when :oboe
      woodwind = woodwind + 1
    when :trumpet
      brass = brass + 1
    when :frenchhorn
      brass = brass + 1
    when :violin
      strings = strings + 1
    when :cello
      strings = strings + 1
    else
      puts "The array contained unknown instruments"
    end
  end

  {
      percussion: percussion,
      woodwind: woodwind,
      brass_number: brass,
      strings: strings
  }
end

ensemble = [:piano, :clarinet, :oboe, :trumpet, :frenchhorn, :violin, :piano, :oboe, :cello]
p tabulate_sections(ensemble)