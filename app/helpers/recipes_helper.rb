module RecipesHelper

  def get_difficulty_select_items
    [
     [I18n.t('difficulty_levels.easy'),1],
     [I18n.t('difficulty_levels.medium'),2],
     [I18n.t('difficulty_levels.hard'),3]
    ]
  end

  def get_difficulty no
    val = nil
    if no.eql? 1
      val = I18n.t('difficulty_levels.easy')
    end
    if no.eql? 2
      val = I18n.t('difficulty_levels.medium')
    end
    if no.eql? 3
      val = I18n.t('difficulty_levels.hard')
    end
    val
  end

  def select_cooking_time
    [
        ["Cooking Time",0],
        ["Minus one hour",1],
        ["Minus 1/2 hour",2],
        ["More than one hour",3]
    ]

  end

  def select_amount_of_ingredients
    [
        ["Amount of Ingredients",8],
        ["Below 9",9],
        ["Below 15",15],
        ["Below 20",20]
    ]

  end

  def humanize_time time
    time.strftime("%H:%M")
  end

end
