class Product < ActiveRecord::Base
  belongs_to :page
  has_one :photo
  accepts_nested_attributes_for :photo
end
