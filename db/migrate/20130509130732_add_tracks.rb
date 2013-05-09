class AddTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.text :lyrics
      t.boolean :bonus
      t.integer :album_id
      t.integer :song_id

      t.timestamps
    end

  end
end
