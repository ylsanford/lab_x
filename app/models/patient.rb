class Patient < ActiveRecord::Base
  belongs_to :practice
  has_many :orders
  validates_formatting_of :p_zip_code, using: :us_zip
end
