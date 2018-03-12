class Userdetail < ApplicationRecord

  def self.search(search)
  where("location LIKE ?", "%#{search}%")
  where("society_name LIKE ?", "%#{search}%")
end
end
