RSpec.describe "Single restaurant view", :type => :feature do

  describe "displays the restaurant\'s" do

		before do
  		user = User.create email: 'tansaku@gmail.com', password: '12345678', password_confirmation: '12345678'
  		login_as user
		end

    it 'name and description' do
      create_restaurant
      expect(page).to have_content "Hello extreme delight maybe4u?"
      expect(page).to have_content "extreme delights straight2u 4 now maybe sometimes"
    end

    it 'review' do
      create_restaurant
      create_review
      expect(page).to have_content 'Reviewer: Ed'
      expect(page).to have_content 'Rating: 1'
      expect(page).to have_content 'Comment: what a pile of shit'
    end
  end

end

# fill_in('restaurant[name]', with: name)
# fill_in('restaurant[description]', with: description)
# click_button 'Create Restaurant'
