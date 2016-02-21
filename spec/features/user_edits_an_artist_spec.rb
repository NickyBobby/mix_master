require 'rails_helper'

RSpec.feature "User can edit an existing artist" do
  scenario "they see an artist's show page with updated info" do
    artist = Artist.create(name: "Nicky Bobby",
                           image_path: "/images/nicky_bobby.jpg")
    updated_info = "Grumpy Baby"

    visit artist_path(artist)
    click_on "Edit"
    fill_in "artist_name", with: updated_info
    click_on "Update Artist"

    expect(page).to have_content updated_info
  end
end
