class Targeting < ActiveRecord::Base
  belongs_to :ad, inverse_of: :targetings, touch: true
  serialize :places,Array
  as_enum :gender, male: 0, female: 1, undetermined: 2

  before_validation do |targeting|
    targeting.places.reject!(&:blank?) if targeting.places
  end
end