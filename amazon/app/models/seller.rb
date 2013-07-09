class Seller < ActiveRecord::Base
  attr_accessible :contact, :description, :name

  has_many :items
  belongs_to :store
  
end
