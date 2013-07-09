class Store < ActiveRecord::Base
  attr_accessible :contact

  has_many :items
  has_many :sellers
end
