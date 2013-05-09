class DropTrackNames < ActiveRecord::Migration
  def change
    remove_column :tracks, :name
  end
end
