  class AddColumnToBookmark < ActiveRecord::Migration
  def change     
    add_column :bookmarks, :cached_votes_up, :integer, :default => 0
    add_column :bookmarks, :cached_votes_down, :integer, :default => 0
    add_column :bookmarks, :cached_votes_score, :integer, :default => 0
    add_index  :bookmarks, :cached_votes_up
    add_index  :bookmarks, :cached_votes_down
    add_index  :bookmarks, :cached_votes_score
  end
end
