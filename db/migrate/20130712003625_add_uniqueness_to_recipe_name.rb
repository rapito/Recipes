class AddUniquenessToRecipeName < ActiveRecord::Migration
  def self.up
    add_index :recipes, :name, :unique => true
  end

  def self.down
  end
end
