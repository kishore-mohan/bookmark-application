class SiteController < ApplicationController
  def index
    if current_user
      @bookmarks = current_user.bookmarks.order('created_at desc')
    else
      @bookmarks = Bookmark.where(is_shared: true).order('created_at desc')
    end
  end
end
