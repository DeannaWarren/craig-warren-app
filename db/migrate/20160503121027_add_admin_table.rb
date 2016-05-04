class AddAdminTable < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :title

      t.string :password_hash

      t.string :email
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url
      t.string :phone_number

      # t.?? :picture

      t.string :summary
      t.string :usp_min
      t.text :usp_20
      t.text :usp_200
      t.text :usp_2k

      t.timestamps
    end
  end
end
