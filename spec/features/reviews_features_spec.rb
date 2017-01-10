require 'rails_helper'

feature 'reviewing' do
  before { Restaurant.create name: 'McDonalds' }

  scenario 'allows users to leave a review using a form' do
    visit '/restaurants'
    click_link 'Review McDonalds'
    fill_in "Thoughts", with: "free cheeseburger"
    select '5', from: 'Rating'
    click_button 'Leave Review'

    expect(current_path).to eq '/restaurants'
    expect(page).to have_content('free cheeseburger')
  end

end
