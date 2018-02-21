require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
  it "can create a restaurant with a name and description" do
    restaurant = Restaurant.create(name: "Psycho Bob's Chicken Shack", description: "Psychadelic freak out joint with live music from Psycho Bob")
    expect(Restaurant.find(1).name).to eq "Psycho Bob's Chicken Shack"
    expect(Restaurant.find(1).description).to eq "Psychadelic freak out joint with live music from Psycho Bob"
  end
end
