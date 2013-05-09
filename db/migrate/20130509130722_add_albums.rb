class AddAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.boolean :live
      t.integer :band_id

      t.timestamps
    end

  end
end
