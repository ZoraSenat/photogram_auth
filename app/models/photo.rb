class Photo < ActiveRecord::Base

  # user_id: presence
  validates :user_id, presence: true

  # associations
  has_many :comments

  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")

  has_many :likes

  has_many :fans, :through => :likes, :source => :user

end
