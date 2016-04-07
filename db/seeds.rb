50.times do
  ad_budget  = Faker::Number.decimal(3, 2).to_f
  creatives_amount = Faker::Number.number(1).to_i
  targetings_amount = Faker::Number.number(1).to_i
  
  ad = Ad.new(budget:  ad_budget)
  
  creatives_amount.times do
    bid = Faker::Number.decimal(2, 2).to_f
    ad_text = Faker::Lorem.sentence
    ad.creatives.build(bid: bid, ad_text: ad_text)
  end
  
  targetings_amount.times do
    gender = 'Male'
    places = Faker::Lorem.words
    ad.targetings.build(gender: gender, places: places)
  end
  
  ad.save
end