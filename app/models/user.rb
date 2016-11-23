class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # username: presence, uniqueness
  validates :username, presence: true, uniqueness: true

  # associations
  has_many :photos

  has_many :comments

  has_many(:likes, :class_name => "Like", :foreign_key => "user_id")

  has_many :liked_photos, :through => :likes, :source => :photo

end
