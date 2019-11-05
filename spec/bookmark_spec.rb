require "bookmark"

describe Bookmark do
  describe ".all" do
    it "returns all bookmarks" do
      connection = PG.connect(dbname: "bookmark_manager_test")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.facebook.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      bookmark = Bookmark.all

      expect(bookmark).to include("http://www.google.com")
      expect(bookmark).to include ("http://www.facebook.com")
      expect(bookmark).to include ("http://www.makersacademy.com")
    end
  end
end
