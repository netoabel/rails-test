require 'test_helper'

class TargetingTest < ActiveSupport::TestCase
  def setup
    @ad = Ad.new(budget: 1000)
    @targeting = @ad.targetings.build(gender:'Female', places:['Recife', 'São Paulo'])
  end
  
  test 'should accept valid attributes' do
    assert @targeting.valid?
  end
  
  test "should accept 'Male' as a gender" do
    @targeting.gender = 'Male'
    assert @targeting.valid?
  end
  
  test "should accept 'Undetermined' as a gender" do
    @targeting.gender = 'Undetermined'
    assert @targeting.valid?
  end
  
  test "should not accept 'Unknown' as a gender" do
    @targeting.gender = 'Unknown'
    assert_not @targeting.valid?
  end
  
  test "should accept nil as a gender" do
    @targeting.gender = nil
    assert @targeting.valid?
  end
  
  test "should accept nil as places" do
    @targeting.places = nil
    assert @targeting.valid?
  end
end