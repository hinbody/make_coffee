require "rails_helper"

RSpec.feature "Users can crete a new Coffee Maker" do
  scenario "new device" do
    visit "/"

    click_link "New Device"

    fill_in "Make", with: "Bialetti"
    fill_in "Model", with: "Moka Express"
    fill_in "Size", with: "3 cup"
    fill_in "Capacity", with: 6
    fill_in "Heat Source", with: "Direct Heat"
    fill_in "Grind", with: "Medium-fine"
    click_button "Make Coffee"

    expect(page).to have_content "You've made coffee!"
    coffee_maker = Coffeemaker.find_by(model: "Moka Express")
    expect(page.current_url).to eq coffeemaker_url(coffee_maker)
  end
end
