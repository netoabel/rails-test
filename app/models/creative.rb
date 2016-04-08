class Creative < ActiveRecord::Base
  belongs_to :ad, inverse_of: :creatives, touch: true
  
  validates :ad_text, presence: true
  validates :bid,     presence: true, numericality: { less_than: :ad_budget }
  
  private
    def ad_budget
      ad.budget || 0
    end
end