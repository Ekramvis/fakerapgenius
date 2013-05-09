class AddIndexes < ActiveRecord::Migration
  def change
    add_index :albums, :band_id
    add_index :tracks, :album_id
    add_index :tracks, :song_id
  end
end
