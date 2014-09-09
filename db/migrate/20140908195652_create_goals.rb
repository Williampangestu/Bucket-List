class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :creator
      t.string :title
      t.text :description
      t.string :location
      t.string :picture
      t.integer :likes, default: 0
      t.timestamps
    end
  end
end
