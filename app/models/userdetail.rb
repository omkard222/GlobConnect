class Userdetail < ApplicationRecord

  # def self.search(search)
  # where("location LIKE ?", "%#{search}%")
  # end
  # def self.search(search2)
  # where("society_name LIKE ?", "%#{search2}%")
  # end
has_many :likes
belongs_to :user
end
