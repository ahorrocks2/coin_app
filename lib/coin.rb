class Fixnum
  define_method(:coin) do
    #code
    if self < 1
      change_needed = self.*100
    else
      change_needed = self
    end

    coin_values = {"Penny" => 1, "Nickel" => 5, "Dime" => 10, "Quarter" => 25}

    counter = 0
    change = 0

    until counter.==change_needed
      change_needed.-(1)
      counter = counter.+(1)
    end
  end
end
