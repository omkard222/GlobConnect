
class AddImagesToUserdetails < ActiveRecord::Migration[5.1]
  def change
     add_column :userdetails, :images, :string
  end
end
