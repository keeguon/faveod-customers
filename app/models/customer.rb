class Customer < ActiveRecord::Base
  attr_accessible :email, :loyalty_points, :name
end
