class Patient < ActiveRecord::Base
  belongs_to :practice
  has_many :orders
end
