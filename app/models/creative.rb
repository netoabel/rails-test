class Creative < ActiveRecord::Base
  belongs_to :ad, inverse_of: :creatives, touch: true
  validates :bid,     presence: true, numericality: { less_than: :ad_budget }
  validates :ad_text, presence: true
  
  private
    def ad_budget
      ad.budget
    end
end
