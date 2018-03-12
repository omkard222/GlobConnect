class CreateUserdetails < ActiveRecord::Migration[5.1]
  def change
    create_table :userdetails do |t|
      t.string :location
      t.string :society_name
      t.string :moderator_name

      t.timestamps
    end
  end
end
