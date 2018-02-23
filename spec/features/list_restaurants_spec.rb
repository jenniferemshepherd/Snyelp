RSpec.describe "Lists the restaurants views", :type => :feature do

	describe "the listing of all restaurants" do

		before do
			user = User.create email: 'tansaku@gmail.com', password: '12345678', password_confirmation: '12345678'
			login_as user
		end

	   it 'is titled List of Restaurants' do
			visit '/'
 			click_link('New restaurant')
 			create_restaurant
			click_link('Back')
	    expect(page).to have_content "List of Restaurants"
	   end

		 it 'has a column for names' do
			visit '/'
			click_link('New restaurant')
			create_restaurant
			click_link('Back')
			expect(page).to have_content "Name"
		 end

		 it 'has a column for descriptions' do
			visit '/'
			click_link('New restaurant')
			create_restaurant
			click_link('Back')
			expect(page).to have_content "Description"
		 end

		 it 'displays a restaurant\'s name' do
		 	visit '/'
		 	click_link('New restaurant')
		 	create_restaurant
		 	click_link('Back')
		 	expect(page).to have_content "Hello extreme delight maybe4u?"
		 end

		 it 'displays a restaurant\'s description' do
		 	visit '/'
		 	click_link('New restaurant')
		 	create_restaurant
		 	click_link('Back')
		 	expect(page).to have_content "extreme delights straight2u 4 now maybe sometimes"
		 end

		 it 'has a link to Show a restaurant\'s details' do
			visit '/'
		 	click_link('New restaurant')
		 	create_restaurant
		 	click_link('Back')
		 	expect(page).to have_link('Show')
		 end

		 it 'has a link to Edit a restaurant\'s details' do
		  visit '/'
		  click_link('New restaurant')
		  create_restaurant
		  click_link('Back')
		  expect(page).to have_link('Edit')
		 end

		 it 'has a link to Remove a restaurant from Snyelp' do
		  visit '/'
		  click_link('New restaurant')
		  create_restaurant
		  click_link('Back')
		  expect(page).to have_link('Remove')
		 end
	end
end
