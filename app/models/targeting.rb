class Targeting < ActiveRecord::Base
  belongs_to :ad, inverse_of: :targetings, touch: true
  serialize :places,Array
  VALID_GENDERS = ['Male', 'Female', 'Undetermined']  # TODO: find some way to store these values
                                                      # as integers in database without throwing 
                                                      # an error on invalid values (as with :enum)
         
  before_validation do |targeting|
    targeting.places.reject!(&:blank?) if targeting.places
  end       
  
  validates :gender, inclusion: { in: VALID_GENDERS }, allow_nil: true
end