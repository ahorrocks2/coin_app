require('capybara/rspec')
require('./app')
caoybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin method path', {:type => :feature}) do
  it('takes number from user and determines lowest number of coins to give for change') do
    visit('/')
    fill_in('coin', :with => '41')
    click_button('change')
    expect(page).to have_content('1 quarters 1 dimes 1 nickels 1 pennies')
  end
end
