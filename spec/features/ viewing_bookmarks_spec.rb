require "./app.rb"

feature "Viewing Bookmarks" do
  scenario "allows you to view the bookmarks" do
    connection = PG.connect(dbname: "bookmark_manager_test")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.facebook.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
    visit ("/bookmarks")
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
    expect(page).to have_content "http://www.makersacademy.com"
  end
end
