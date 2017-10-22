class Practice < ActiveRecord::Base
  has_many :patients
  has_many :orders
end
