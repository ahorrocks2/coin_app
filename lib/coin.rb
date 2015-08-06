class Fixnum
  define_method(:coin) do
    change_needed = self

    quarters_needed = change_needed./(25)
    pennies_needed = 0
    nickels_needed = 0
    dimes_needed = 0
    remainder = change_needed % 25

    while remainder > 9
      dimes_needed = remainder./(10)
      remainder = remainder % 10
    end

    while remainder > 4
      nickels_needed = remainder./(5)
      remainder = remainder % 5
      pennies_needed = remainder
    end
    
    final_array = []
    final_array.push(quarters_needed)
    final_array.push(dimes_needed)
    final_array.push(nickels_needed)
    final_array.push(pennies_needed)
    final_array[0].to_s + " quarters " + final_array[1].to_s + " dimes " + final_array[2].to_s + " nickels " + final_array[3].to_s + " pennies"
  end
end
