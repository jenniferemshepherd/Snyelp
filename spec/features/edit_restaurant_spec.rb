RSpec.describe "Edit a restaurant view", :type => :feature do

  describe "the form for editing an existing restaurant" do

		before do
  		user = User.create email: 'tansaku@gmail.com', password: '12345678', password_confirmation: '12345678'
  		login_as user
		end

    it 'is titled Edit restaurant' do
      visit '/'
			click_link('New restaurant')
			create_restaurant
			visit '/'
			click_link('Restaurants')
			click_link('Edit')
      expect(page).to have_content "Edit restaurant"
    end

    it 'has a field for editing the name of the existing restaurant' do
			visit '/'
			click_link('New restaurant')
			create_restaurant
			visit '/'
			click_link('Restaurants')
			click_link('Edit')
      expect(page).to have_field("restaurant[name]")
    end

		it 'has a field for editing the description of the existing restaurant' do
			visit '/'
			click_link('New restaurant')
			create_restaurant
			visit '/'
			click_link('Restaurants')
			click_link('Edit')
			expect(page).to have_field("restaurant[description]")
		end

		it 'features a button for the user to update an existing restaurant' do
			visit '/'
			click_link('New restaurant')
			create_restaurant
			visit '/'
			click_link('Restaurants')
			click_link('Edit')
			expect(page).to have_button("Update Restaurant")
		end

		it 'features a link for the user to go back'  do
			visit '/'
			click_link('New restaurant')
			create_restaurant
			visit '/'
			click_link('Restaurants')
			click_link('Edit')
			expect(page).to have_link('Back')
		end
  end
end
