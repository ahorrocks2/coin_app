require('rspec')
require('coin')

describe('fixnum#coin') do
  it('Returns change needed in all pennies') do
    expect((15).coin()).to(eq("15 pennies"))
  end

  it('Returns change needed in pennies and nickels') do
    expec((12).coin()).to(eq("2 nickels and 2 pennies"))
  end
end
