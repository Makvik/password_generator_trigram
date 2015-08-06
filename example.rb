require 'password_generator_trigram'

pg = PasswordGenerator.new

if ARGV.length == 0
  puts pg.create_new(6)
elsif ARGV.length > 1
   puts "Many arguments"
elsif !pg.is_number? ARGV.first
  puts "Invalid arguments"
elsif ARGV.first.to_i < 6
  puts "Too simple password, minimum length of 6 characters"
else
  puts pg.new.create_new(ARGV.first.to_i)
end

# pg = PasswordGenerator.new

# loop do
#   puts "------------------------------------"
#   puts "---------Password Generator---------"
#   puts "--------Enter length Password-------"
#   length = gets.to_i
#   puts "------------------------------------"
#   puts pg.create_new(length)
# end
