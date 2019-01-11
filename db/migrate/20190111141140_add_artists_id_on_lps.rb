class AddArtistsIdOnLPS < ActiveRecord::Migration[5.0]
  def change
    add_column :lps, :artist_id, :integer
    add_index :lps, :artist_id
  end
end
