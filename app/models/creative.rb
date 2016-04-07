class Creative < ActiveRecord::Base
  belongs_to :ad
  validates :bid,     presence: true
                      # numericality: { less_than_or_equal_to: :ad_budget }
  validates :ad_text, presence: true
  
  def ad_budget
    if (self.ad.budget.present?)
      self.ad.budget
    else
      0
    end
  end
end
