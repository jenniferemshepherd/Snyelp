require 'rails_helper'

RSpec.describe User, :type => :model do
  it "can create a user a name" do
    user = User.create(name: "Psycho Bob")
    expect(User.find(1).name).to eq "Psycho Bob"
    end
end
