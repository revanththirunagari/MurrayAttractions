class CreateAttractionsdbs < ActiveRecord::Migration
  def change
    create_table :attractionsdbs do |t|
      t.string :name
      t.string :description
      t.string :rating
      t.string :entry
      t.string :web

      t.timestamps null: false
    end
  end
end
