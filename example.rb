require 'password_generator_trigram'

puts PasswordGenerator.new.create_new(ARGV[0].to_i)
# pg = PasswordGenerator.new

# loop do
#   puts "------------------------------------"
#   puts "---------Password Generator---------"
#   puts "--------Enter length Password-------"
#   length = gets.to_i
#   puts "------------------------------------"
#   puts pg.create_new(length)
# end
