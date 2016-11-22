class Article < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 50 }
  validates :resource_code, presence: true, length: { maximum: 3000 }
  validates :date, presence: true
  has_many :microposts
end
