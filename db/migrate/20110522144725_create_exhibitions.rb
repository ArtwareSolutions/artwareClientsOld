class CreateExhibitions < ActiveRecord::Migration
  def self.up
    create_table :exhibitions do |t|
      t.string :title
      t.string :site
      t.string :city
      t.date :opening
      t.date :closing
      t.text :comment
      t.timestamps
    end
  end

  def self.down
    drop_table :exhibitions
  end
end
