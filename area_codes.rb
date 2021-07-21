dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  "The area code for #{key} is #{somehash[key]}"
end

# Execution flow
loop do
  # Write your program execution code here
  puts 'Do you want to look up an area code based on a city name?(Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y'

  puts 'City list'
  25.times { print '-' }
  puts
  puts get_city_names(dial_book)
  puts 'Which city?'
  selection = gets.chomp.downcase
  if dial_book.include?(selection)
    puts get_area_code(dial_book, selection)
  else
    puts 'You entered an invalid selection.'
  end
end
