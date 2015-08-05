# PasswordGeneratorTrigram

GPW - Generate pronounceable passwords
   This program uses statistics on the frequency of three-letter sequences
   in English to generate passwords.  The statistics are
   generated from your dictionary by the program load_trigram.

   See www.multicians.org/thvv/gpw.html for history and info.
   Tom Van Vleck
   
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'password_generator_trigram'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install password_generator_trigram

## Usage

puts PasswordGenerator.new.create_new(length)

or 

pgt

## Contributing
