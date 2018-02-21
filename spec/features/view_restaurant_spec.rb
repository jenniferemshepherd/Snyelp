RSpec.describe "Single restaurant view", :type => :feature do

  it 'displays the restaurants name' do
    visit '/restaurants/new'
    fill_in('restaurant[name]', with: "Hello extreme delight maybe4u?")
    fill_in('restaurant[description]', with: "extreme delights straight2u 4 now maybe sometimes")
    click_button 'Create Restaurant'
    expect(page).to have_content "Hello extreme delight maybe4u?"
  end

end
