require('rspec')
require('coin')

describe('fixnum#coin') do
  it('Returns change needed in all pennies') do
    expect((1).coin()).to(eq("1 penny"))
  end

  it('Returns change needed in pennies and nickels') do
    expect((6).coin()).to(eq("1 nickels and 1 penny"))
  end

  it('Returns change needed in pennies, nickels, and dimes') do
    expect((16).coin()).to(eq("1 dime, 1 nickel, and 1 penny"))
  end

  
end
