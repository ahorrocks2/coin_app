require('rspec')
require('coin')

describe('fixnum#coin') do
  it('Returns change needed in all quarters') do
    expect((25).coin()).to(eq("1"))
  end

  it('Returns change needed in quarters and dimes') do
    expect((35).coin()).to(eq("11"))
  end

  it('Returns change needed in pennies, nickels, and dimes') do
    expect((40).coin()).to(eq("111"))
  end

  it('Returns change needed in quarters, dimes, nickels, and pennies.') do
    expect((41).coin()).to(eq("1111"))
  end
end
