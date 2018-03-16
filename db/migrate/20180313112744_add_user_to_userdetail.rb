class AddUserToUserdetail < ActiveRecord::Migration[5.1]
  def change
    add_reference :userdetails, :user, foreign_key: true
  end
end
