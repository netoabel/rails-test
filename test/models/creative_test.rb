require 'test_helper'

class CreativeTest < ActiveSupport::TestCase
  def setup
    @ad = Ad.new(budget: 1000)
    @creative = @ad.creatives.build(bid:10, ad_text:'Your ad rocks! :)')
  end
  
  test 'should accept valid attributes' do
    assert @creative.valid?
  end

  test "should have a bid" do
    @creative.bid = nil
    assert_not @creative.valid?
  end
  
  test "should have an ad text" do
    @creative.ad_text = nil
    assert_not @creative.valid?
  end
  
  test "should not allow a bid greater than the ad budget" do
    @creative.bid = 1001
    assert_not @creative.valid?
  end
end