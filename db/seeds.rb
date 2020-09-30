3.times do |n|
  restaurant = Restaurant.new(
    name: "testレストラン_#{n}",
    fee: 100,
    time_required: 10,
  )
  restaurant.save!
end

Restaurant.all.each do |restaurant|
  12.times do |m|
    food = restaurant.foods.build(
      restaurant_id: restaurant.id,
      name: "フード名_#{m}",
      price: 500,
      description: "フード_#{m}の説明文です。"
    )
    food.save!
  end
end