require_relative 'array_trigram'

class PasswordGenerator
  include ArrayTrigram
  SYMBOLS_FOR_PASSWORD = "abcdefghijklmnopqrstuvwxyz"

  def create_new (password_length)
    output = ""
    sum = 0
    ranno = rand * 125_729.0

    # First 3 symbols
    0.upto(25) do |c1|
      0.upto(25) do |c2|
        0.upto(25) do |c3|
          sum += TRIGRAM[c1][c2][c3]
          if sum > ranno
            output += SYMBOLS_FOR_PASSWORD[c1]
            output += SYMBOLS_FOR_PASSWORD[c2]
            output += SYMBOLS_FOR_PASSWORD[c3]
            c1 = 25
            c2 = 25
            break
          end
        end
        break if c2 == 25
      end
      break if c1 == 25
    end

    # Now do a random walk.
    3.upto(password_length - 1) do |numberchar|
      c1 = SYMBOLS_FOR_PASSWORD.index(output[numberchar-2])
      c2 = SYMBOLS_FOR_PASSWORD.index(output[numberchar-1])
      sum = 0
      0.upto(25) do |c3|
        sum += TRIGRAM[c1][c2][c3]
      end
      break if sum == 0
      ranno = rand * sum
      sum = 0
      0.upto(25) do |c3|
        sum += TRIGRAM[c1][c2][c3]
        if sum > ranno
          output += SYMBOLS_FOR_PASSWORD[c3]
          break
        end
      end
    end
    return output
  end

  def is_number?(obj)
    obj.to_s == obj.to_i.to_s
  end
end