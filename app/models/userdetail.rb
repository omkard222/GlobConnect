require_relative '../uploaders/image_uploader.rb'
class Userdetail < ApplicationRecord

  mount_uploaders :images, ImageUploader
  serialize :images, JSON


  def self.search(search)
    where("location LIKE ?", "%#{search}%")
  end
  def self.search(search2)
    where("society_name LIKE ?", "%#{search2}%")
  end

end
