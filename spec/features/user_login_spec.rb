RSpec.describe "user log in etc", :type => :feature do

	describe 'User signs in and out' do

		it 'allows user to sign up' do
			visit '/'
			click_link('Sign Up')
			expect(page).to have_button('Sign up')
		end

		it 'allows user to sign in' do
			visit '/'
			click_link('Sign In')
			expect(page).to have_button('Log in')
		end

		it 'allows user to log out' do
			user = User.create email: 'tansaku@gmail.com', password: '12345678', password_confirmation: '12345678'
			login_as user
			visit '/restaurants'
			click_link('Sign Out')
			expect(page).to have_content('Signed out successfully')
		end
	end
end
