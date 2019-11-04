require "sinatra/base"

class BookmarkManager < Sinatra::Base
  get "/" do
    "Bookmark Manager"
  end

  get "/bookmarks" do
    @bookmarks = [
      "https://www.google.com",
      "https://www.facebook.com",
      "https://www.twitter.com",
    ]

    erb :'bookmarks/index'
  end

  run! if app_file == $0
end
