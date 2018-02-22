require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
  it "creates a restaurant with a name and description" do
    restaurant = Restaurant.create(name: "Psycho Bob's Chicken Shack", description: "Psychadelic freak out joint with live music from Psycho Bob")
    expect(Restaurant.find(1).name).to eq "Psycho Bob's Chicken Shack"
    expect(Restaurant.find(1).description).to eq "Psychadelic freak out joint with live music from Psycho Bob"
  end

  it "cannot have a length less than 5" do
    restaurant = Restaurant.create(name: "KFC", description: "closed down")
    expect(Restaurant.all.count).to eq 0
  end

  it "cannot be created without a name" do
    restaurant = Restaurant.create(description: "closed down")
    expect(Restaurant.all.count).to eq 0
  end
end
