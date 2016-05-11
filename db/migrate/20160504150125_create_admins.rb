class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name, null: false
      t.string :title

      t.string :password_hash, null: false

      t.string :email, null: false
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin_url
      t.string :phone_number

      # t.?? :picture

      t.string :summary # on blog posts
      t.string :usp_min # under title
      t.text :usp_20    # Contact page
      t.text :usp_200   # front page
      t.text :usp_2k    # about page

      t.timestamps
    end
  end
end