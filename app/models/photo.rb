class Photo < ActiveRecord::Base

  # user_id: presence
  validates :user_id, presence: true

  # associations
  has_many :comments

  belongs_to :users

  has_many :likes

  has_many :fans, :through => :likes, :source => :user

end
