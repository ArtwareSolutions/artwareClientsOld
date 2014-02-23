class CreateArtworks < ActiveRecord::Migration
  def self.up
    create_table :artworks do |t|
      t.string :artist
      t.string :title
      t.integer :year
      t.text :description
      t.string :medium
      t.string :dimensions
      t.timestamps
    end
  end

  def self.down
    drop_table :artworks
  end
end
