class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string, :Name
      t.string, :Description
      t.string, :Rating
      t.string, :Entry
      t.string :Web

      t.timestamps null: false
    end
  end
end
