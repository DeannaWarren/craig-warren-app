require 'spec_helper'

describe Admin do
  describe "upon creation" do
    it "successfully creates Admin" do
      admin = Admin.new({name: "Test Name", password: "test_password", email: "test@email.com"})
      expect{admin.save}.to change{Admin.all.length}.by(1)
    end
    it "requires a name" do
      admin = Admin.new({password: "test_password", email: "test@email.com"})
      expect{admin.save}.to raise_error
    end
    it "requires a password" do
      admin = Admin.new({name: "Test Name", email: "test@email.com"})
      expect{admin.save}.to raise_error
    end
    it "requires a email" do
      admin = Admin.new({name: "Test Name", password: "test_password"})
      expect{admin.save}.to raise_error
    end
    it "encrypts the password" do
      admin = Admin.create({name: "Test Name", password: "test_password", email: "test@email.com"})
      expect(admin.password.class).to eq(BCrypt::Password)
    end
  end
  describe "admin sessions", js: true do
    it "can sign in" do
      Admin.create({name: "Test Name", password: "test_password", email: "test@email.com"})
      visit "/admin/sessions/new"
      fill_in "Email", :with => "test@email.com"
      fill_in "Password", :with => "test_password"
      click_on('Log In')
      expect(page).to have_selector(:link_or_button, 'Log Out')
    end
    it "can sign out" do
      Admin.create({name: "Test Name", password: "test_password", email: "test@email.com"})
      visit "/admin/sessions/new"
      fill_in "Email", :with => "test@email.com"
      fill_in "Password", :with => "test_password"
      click_on('Log In')
      click_on('Log Out')
      visit "/admin"
      expect(page).to have_selector(:link_or_button, "Log In")
    end
  end
  describe "admin functions" do
  end
end
