RSpec.describe "Enter new restaurant view", :type => :feature do

  describe "the form for entering a new restaurant" do

		before do
  		user = User.create email: 'tansaku@gmail.com', password: '12345678', password_confirmation: '12345678'
  		login_as user
		end

    it 'is titled New restaurant' do
      visit '/'
			click_link('New restaurant')
      expect(page).to have_content "New restaurant"
    end

    it 'has a field for entering the name of the new restaurant' do
			visit '/'
			click_link('New restaurant')
      expect(page).to have_field("restaurant[name]")
    end

		it 'has a field for entering a description of the new restaurant' do
			visit '/'
			click_link('New restaurant')
			expect(page).to have_field("restaurant[description]")
		end

		it 'features a button for the user to create a new restaurant' do
			visit '/'
			click_link('New restaurant')
			expect(page).to have_button("Create Restaurant")
		end

		it 'features a link for the user to go back'  do
			visit '/'
			click_link('New restaurant')
			expect(page).to have_link('Back')
		end
  end
end
