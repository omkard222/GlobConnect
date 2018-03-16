require_relative '../uploaders/image_uploader.rb'
class Userdetail < ApplicationRecord

<<<<<<< HEAD
  # def self.search(search)
  # where("location LIKE ?", "%#{search}%")
  # end
  # def self.search(search2)
  # where("society_name LIKE ?", "%#{search2}%")
  # end
has_many :likes
belongs_to :user
=======
  has_many :likes

  mount_uploaders :images, ImageUploader
  serialize :images, JSON


  def self.search(search)
    where("location LIKE ?", "%#{search}%")
  end
  def self.search(search2)
    where("society_name LIKE ?", "%#{search2}%")
  end

>>>>>>> 05832d3a329d9399f04016df6b2e87ba16373819
end
