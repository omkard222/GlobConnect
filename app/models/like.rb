<<<<<<< HEAD
class Like < ApplicationRecord
  belongs_to :user
=======
class Like < ActiveRecord::Base
 belongs_to :user
>>>>>>> 05832d3a329d9399f04016df6b2e87ba16373819
  belongs_to :userdetail
end
