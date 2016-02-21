require 'rails_helper'

RSpec.feature "user can view all artists" do
  scenario "they see the page with an index of all artists" do
    name = "Grumpy Baby"
    artist = Artist.create(name: name,
                           image_path: "/images/grumpy_baby.jpg")
    name2 = "Nicky Bobby"
    artist2 = Artist.create(name: name2,
                            image_path: "/images/nicky_bobby.jpg")


    visit artists_path

    expect(page).to have_content name
    expect(page).to have_content name2
  end
end
