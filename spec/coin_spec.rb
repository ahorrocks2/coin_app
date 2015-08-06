require('rspec')
require('coin')

describe('fixnum#coin') do
  it('Returns change needed in all quarters') do
    expect((25).coin()).to(eq("1 quarters 0 dimes 0 nickels 0 pennies"))
  end

  it('Returns change needed in quarters and dimes') do
    expect((35).coin()).to(eq("1 quarters 1 dimes 0 nickels 0 pennies"))
  end

  it('Returns change needed in quarters, nickels, and dimes') do
    expect((40).coin()).to(eq("1 quarters 1 dimes 1 nickels 0 pennies"))
  end

  it('Returns change needed in quarters, dimes, nickels, and pennies.') do
    expect((41).coin()).to(eq("1 quarters 1 dimes 1 nickels 1 pennies"))
  end
end
