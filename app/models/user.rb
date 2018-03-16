class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
<<<<<<< HEAD
  has_many :likes
  has_many :userdetails
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
=======
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable

  has_many :likes

  def likes?(userdetail)
    userdetail.likes.where(user_id: id).any?
  end

  def avatar_url
    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}"
  end
>>>>>>> 05832d3a329d9399f04016df6b2e87ba16373819
end
