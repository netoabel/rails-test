class Ad < ActiveRecord::Base
    has_many :creatives, dependent: :destroy
    has_many :targetings, dependent: :destroy
    
    validates :creatives, presence: true
    validates :targetings, presence: true
    validates :budget, presence: true, numericality: { greater_than: 0}
end