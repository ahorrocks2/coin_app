require('rspec')
require('coin')

describe('fixnum#coin') do
  it('Returns change needed in all pennies') do
    expect((15).coin()).to(eq(15))
  end
end
