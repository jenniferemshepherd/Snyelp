require 'rails_helper'

RSpec.describe Review, :type => :model do
  it "stores a review that is left" do
    restaurant = Restaurant.create(name: "Psycho Bob's Chicken Shack", description: "Psychadelic freak out joint with live music from Psycho Bob")
    review = restaurant.reviews.create(reviewer: "Riley", rating: 4, comment: "amazing and trippy")
    expect(restaurant.reviews.find(1).reviewer).to eq "Riley"
    expect(restaurant.reviews.find(1).comment).to eq "amazing and trippy"
    expect(restaurant.reviews.find(1).rating).to eq 4
    expect(restaurant.reviews.count).to eq 1
  end

end
