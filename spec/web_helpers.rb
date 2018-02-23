def create_restaurant(name = "Hello extreme delight maybe4u?", description = "extreme delights straight2u 4 now maybe sometimes")
  visit '/restaurants/new'
  fill_in('restaurant[name]', with: name)
  fill_in('restaurant[description]', with: description)
  click_button 'Create Restaurant'
end

def create_review(score = "1")
	click_link('Sign Out')
	user = User.create email: 'hidey@gmail.com', password: '12345678', password_confirmation: '12345678'
	login_as user
	click_link('Restaurants')
	click_link('Show')
  fill_in('review[reviewer]', with: "Ed")
  fill_in('review[comment]', with: "what a pile of shit")
  within("div##{score}") do
    choose('review[rating]')
  end
  click_button 'Create Review'
end

def sign_up(email: 'ed@ededed.ed', password: 'Banana')
  visit '/users/sign_in'
  fill_in('password', with: password)
  fill_in('email', with: email)
  click_button 'Sign up'
end

def log_in(email: 'ed@ededed.ed', password: 'Banana')
  visit '/users/sign_in'
  fill_in('password', with: password)
  fill_in('email', with: email)
  click_button 'Log in'
end
