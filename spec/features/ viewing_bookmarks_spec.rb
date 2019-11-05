require "./app.rb"

feature "Viewing Bookmarks" do
  scenario "allows you to view the bookmarks" do
    visit ("/bookmarks")
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end
