class Fixnum
  define_method(:coin) do
    change_needed = self
    # if change_wanted < 1
    #   change_needed = change_wanted.*100
    # else
    #   change_needed = change_wanted
    # end

    coin_values = {1 => "Penny", 5 => "Nickel", 10 => "Dime", 25 => "Quarter"}

    quarters_needed = change_needed./(25)
    remainder = change_needed % 25

    if remainder > 0
      while remainder > 9
        dimes_needed = remainder./(10)
        remainder = remainder % 10
      end
      while remainder > 4
        nickels_needed = remainder./(5)
        remainder = remainder % 5
        pennies_needed = remainder
      end
    else
      "You don't need change."
    end

    final_quarters = quarters_needed.to_s
    final_dimes = dimes_needed.to_s
    final_nickels = nickels_needed.to_s
    final_pennies = pennies_needed.to_s

    if final_quarters == "0"
      final_dimes + final_nickels + final_pennies
    elsif final_pennies == "0"
      final_quarters + final_dimes + final_nickels
    else
      final_quarters + final_dimes + final_nickels + final_pennies
    end

  end
end
