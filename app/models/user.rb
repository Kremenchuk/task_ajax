class User < ActiveRecord::Base
  attr_accessible :first_name,:last_name,:email,:user_country,:user_state,:user_city,:user_address

  validates :first_name,:last_name,:email, {presence: true}

  #,:user_country,:user_state,:user_city,:user_address,
end
