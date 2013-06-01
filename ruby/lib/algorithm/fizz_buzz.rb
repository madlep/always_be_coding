module Algorithm
  def self.fizz_buzz
    (1..100).map {|n|
      fizz = n % 3 == 0 ? "Fizz" : nil
      buzz = n % 5 == 0 ? "Buzz" : nil
      fizz || buzz ? "#{fizz}#{buzz}" : n.to_s
    }
  end
end
