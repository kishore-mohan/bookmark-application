class AddIsSharedToBookmark < ActiveRecord::Migration
  def change
    add_column :bookmarks, :is_shared, :boolean, default: true
  end
end
