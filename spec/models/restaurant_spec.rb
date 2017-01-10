require 'rails_helper'

describe Restaurant, type: :model do
  it 'is not valid with a name of fewer than three characters' do
    restaurant = Restaurant.new(name: "KF")
    expect(restaurant).not_to be_valid
  end
end
