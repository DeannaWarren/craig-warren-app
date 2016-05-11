class Blog < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :admin
end
