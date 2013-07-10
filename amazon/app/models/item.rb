class Item < ActiveRecord::Base
  attr_accessible :description, :price, :title

  belongs_to :seller
  belongs_to :user
  has_many :reviews

  def available?
  	self.user.blank?
  end
end

