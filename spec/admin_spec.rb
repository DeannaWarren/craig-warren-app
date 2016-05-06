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
    xit "can sign in" do
      visit "/admin/sign_in"
    end
    it "can sign out"
  end
  describe "admin functions" do
  end
end
