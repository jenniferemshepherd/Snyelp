RSpec.describe "Single restaurant view", :type => :feature do

  describe "displays the restaurant\'s" do

    it 'name and description' do
      create_restaurant
      expect(page).to have_content "Hello extreme delight maybe4u?"
      expect(page).to have_content "extreme delights straight2u 4 now maybe sometimes"
    end

    it 'review' do
      create_restaurant
      fill_in('review[reviewer]', with: "Jennifer")
      fill_in('review[comment]', with: "what a pile of shit")
      within('div#1') do
        choose('review[rating]')
      end
      click_button 'Create Review'
      expect(page).to have_content 'Reviewer: Jennifer'
      expect(page).to have_content 'Rating: 1'
      expect(page).to have_content 'Comment: what a pile of shit'
    end
  end

end

# fill_in('restaurant[name]', with: name)
# fill_in('restaurant[description]', with: description)
# click_button 'Create Restaurant'
