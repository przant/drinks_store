module AdminsHelper
  def total_users
    User.where(role: [nil, 'Normal']).count
  end

  def total_drinks
    Drink.count
  end

  def total_snacks
    Snack.count
  end

  def total_promos
    Promo.where(active: true).count
  end
end
