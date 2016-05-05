require 'spec_helper'

describe Admin do

  it "successfully creates Admin" do
    admin = Admin.new({name: })
    expect{admin.save}.to change{Admin.all.length}.by(1)
  end

end
