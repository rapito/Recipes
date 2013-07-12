class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :id
      t.string :content
      t.integer :recipe_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
