class Micropost < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  validates :article_id, presence: true
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 200 }
end
