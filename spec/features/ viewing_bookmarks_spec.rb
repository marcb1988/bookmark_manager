require "./app.rb"

feature "Viewing Bookmarks" do
  scenario "visiting the index page" do
    visit ("/")
    expect(page).to have_content "Bookmark Manager"
  end
end
