def create_restaurant(name = "Hello extreme delight maybe4u?", description = "extreme delights straight2u 4 now maybe sometimes")
  visit '/restaurants/new'
  fill_in('restaurant[name]', with: name)
  fill_in('restaurant[description]', with: description)
  click_button 'Create Restaurant'
end

def create_review(score = "1")
  fill_in('review[reviewer]', with: "Jennifer")
  fill_in('review[comment]', with: "what a pile of shit")
  within("div##{score}") do
    choose('review[rating]')
  end
  click_button 'Create Review'
end
