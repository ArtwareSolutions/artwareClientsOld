class CreateExhibitionsArtworks < ActiveRecord::Migration
  def self.up
    create_table :exhibitions_artworks do |t|
      t.integer :exhibition_id
      t.integer :artwork_id
      t.timestamps
    end
  end

  def self.down
    drop_table :exhibitions_artworks
  end
end
