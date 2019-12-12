class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    after_create :welcome_send

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :specialities
  has_many :follows

  has_many :follower_relationships , foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :user_id, class_name: 'Follow'
  has_many :followings, through: :following_relationships, source: :following

  has_many :managed_groups, foreign_key: 'admin_id', class_name:"Group"

  has_many :join_groups
  has_many :groups, :through => :join_groups


  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
