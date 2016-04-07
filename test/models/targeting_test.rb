require 'test_helper'

class TargetingTest < ActiveSupport::TestCase
  def setup
    @ad = Ad.new(budget: 1000)
    @targeting = @ad.targetings.build(gender: :female, places:['recife', 'são paulo'])
  end
  
  test 'should accept valid attributes' do
    assert @targeting.valid?
  end
  
  test "should accept :male as a gender" do
    @targeting.gender = :male
    assert @targeting.valid?
  end
  
  test "should accept :undetermined as a gender" do
    @targeting.gender = :undetermined
    assert @targeting.valid?
  end
  
  test "should set gender to nil if an invalid value is provided" do
    @targeting.gender = :foobar
    assert @targeting.gender.nil?
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