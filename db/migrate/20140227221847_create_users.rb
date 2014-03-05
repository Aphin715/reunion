class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :status
      t.string :location
      t.string :email
      t.string :personal_website
      t.string :buisness_website
      t.date :birthday
      t.string :spouse_or_partner
      t.string :children
      t.string :employer
      t.string :facebook
      t.text :bio
      t.string :photo

      t.timestamps
    end
  end
end
