def create_restaurant(name = "Hello extreme delight maybe4u?", description = "extreme delights straight2u 4 now maybe sometimes")
  visit '/restaurants/new'
  fill_in('restaurant[name]', with: name)
  fill_in('restaurant[description]', with: description)
  click_button 'Create Restaurant'
end
