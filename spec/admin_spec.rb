require 'spec_helper'

describe Admin do

  it "successfully creates Admin" do
    admin = Admin.new({
      name: "Deanna Warren",
      email: "user@fakeemail.com",
      password: "fake_password"
    })
    expect(admin.save).to change{Admin.all.length}.by(1)
  end

end
