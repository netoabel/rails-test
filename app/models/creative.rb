class Creative < ActiveRecord::Base
  belongs_to :ad, inverse_of: :creatives, touch: true
  
  validates :ad_text, presence: true
  validates :bid,     presence: true
  validates :bid,     numericality: { less_than: :ad_budget }, 
                      if: Proc.new { |creative| creative.bid && creative.ad.budget }
  
  private
    def ad_budget
      ad.budget
    end
end