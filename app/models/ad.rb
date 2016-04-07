class Ad < ActiveRecord::Base
    has_many :creatives, dependent: :destroy
    has_many :targetings, dependent: :destroy
    
    default_scope -> { order(updated_at: :desc) }
    
    accepts_nested_attributes_for :creatives, allow_destroy: true
    accepts_nested_attributes_for :targetings, allow_destroy: true
    
    validates :creatives, presence: true
    validates :targetings, presence: true
    
    validates :budget, presence: true, numericality: { greater_than: 0}
end