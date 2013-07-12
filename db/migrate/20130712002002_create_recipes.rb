class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.integer :id
      t.string :name
      t.time :estimaded_cooking_time
      t.integer :difficulty_level
      t.string :directions

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
