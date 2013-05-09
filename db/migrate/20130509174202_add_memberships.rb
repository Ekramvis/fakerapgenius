class AddMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :band_id
      t.integer :artist_id

      t.timestamps
    end
    add_index :memberships, :band_id
    add_index :memberships, :artist_id
  end
end
