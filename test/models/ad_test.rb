require 'test_helper'

class AdTest < ActiveSupport::TestCase
  def setup
    @ad = Ad.new(budget: 1000)
    @ad.creatives.new(bid:100, ad_text:'Your ad text.')
    @ad.targetings.new(gender: :male, places: ['recife', 'são paulo'])
  end
  
  test "should accept valid attributes and associations" do
    assert @ad.valid?
  end
  
  test "should have a budget" do
    @ad.budget = nil
    assert_not @ad.valid?
  end
  
  test "should have a budget greater than zero" do
    @ad.budget = 0
    assert_not @ad.valid?
    @ad.budget = -1
    assert_not @ad.valid?
  end
  
  test "should have at least one creative" do
    ad = Ad.new(budget: 1000)
    ad.targetings.new(gender: :male, places: ['recife', 'são paulo'])
    assert_not ad.valid?
  end
  
  test "should have at least one targeting" do
    ad = Ad.new(budget: 1000)
    ad.creatives.new(bid:100, ad_text:'Your ad text.')
    assert_not ad.valid?
  end
end