# As a user
# Given that an artist exists in the database
# When I visit that artist's show page
# And I click on "Delete"
# Then I should be back on the artist index page
# Then I should not see the artist's name
require 'rails_helper'

RSpec.feature "User can delete an existing artist" do
  scenario "they see the artists index page without deleted artist" do
    name = "Grumpy Baby"
    artist = Artist.create(name: name,
                           image_path: "/images/grumpy_baby.jpg")
    name2 = "Nicky Bobby"
    artist2 = Artist.create(name: name2,
                            image_path: "/images/nicky_bobby.jpg")

    visit artist_path(artist)
    click_on "Delete"

    expect(page).to have_content name2
    expect(page).not_to have_content name
  end
end
