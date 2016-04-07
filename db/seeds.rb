PLACES = ["recife", "são paulo", "rio de janeiro", "belo horizonte"]
GENDERS = %i(male female undetermined)

50.times do
  ad_budget  = Faker::Number.decimal(3, 2).to_f
  number_of_creatives = Faker::Number.number(1).to_i
  number_of_targetings = Faker::Number.number(1).to_i
  
  ad = Ad.new(budget:  ad_budget)
  
  number_of_creatives.times do
    bid = Faker::Number.decimal(2, 2).to_f
    ad_text = Faker::Lorem.sentence
    ad.creatives.build(bid: bid, ad_text: ad_text)
  end
  
  number_of_targetings.times do
    gender = GENDERS.sample
    places = [PLACES.sample, PLACES.sample]
    ad.targetings.build(gender: gender, places: places)
  end
  
  ad.save
end