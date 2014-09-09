class CreateSharings < ActiveRecord::Migration
  def change
    create_table :sharings do |t|
      t.belongs_to :user
      t.belongs_to :goal
      t.timestamps
    end
  end
end
