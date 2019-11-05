feature "Adding new bookmarks" do
  scenario "Add a new bookmark to the DB" do
    visit("/bookmarks/new")
    fill_in("url", with: "http://www.test.com")
    click_button("Submit")

    expect(page).to have_content("http://www.test.com")
  end
end
