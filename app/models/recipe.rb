class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_many :comments

  accepts_nested_attributes_for :ingredients, limit: 10, allow_destroy: true
  scope :by_name, order('name desc')
  scope :by_difficulty, lambda { |dif| where('difficulty_level = ?',dif)}
  #scope :by_time, lambda do |eq,time,mins|
  #  if eq
  #  where('estimated_cooking_time = ?',dif)
  #end
  #scope :by_amount_of_ingredients, joins(:ingredients).group("ingredients.recipe_id").having("count(ingredients.id) < ?")
  #scope :by_amount_of_ingredients, lambda { |amount|  joins(:ingredients).group("ingredients.recipe_id").having("count(ingredients.id) <= ?",amount)}

  def self.by_amount_of_ingredients amount
    recipes = []
    Recipe.all.each do |r|
      recipes.push r unless r.ingredients.size > amount.to_i
    end
    recipes
  end

  validates_uniqueness_of :name
end
