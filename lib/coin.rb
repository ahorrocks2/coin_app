class String
  define_method(:coin) do
    change_wanted = self.to_i
    if change_wanted < 1
      change_needed = change_wanted.*100
    else
      change_needed = change_wanted
    end

    coin_values = {"Penny" => 1, "Nickel" => 5, "Dime" => 10, "Quarter" => 25}

    counter = 0
    change = 0

    if change_needed > 24
      quarters_needed = change_needed./(25)
      remainder = change_needed%25
        while remainder > 9
          dimes_needed = remainder./(10)
          remainder = remainder%10
        end
          while remainder > 4
            nickels_needed = remainder./(5)
            remainder = remainder%5
          end
            # while remainder < 5
            #   p
          final_quarters = quarters_needed.to_s
          final_dimes = dimes_needed.to_s
          final_nickels = nickels_needed.to_s
          final_quarters + final_dimes + final_nickels
    else
      "Less than a quarter"
    end
#dimes_needed
  end
end
