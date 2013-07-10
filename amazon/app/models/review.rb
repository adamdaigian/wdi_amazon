class Review < ActiveRecord::Base
  attr_accessible :content

  belongs_to :item_id
  belongs_to :user_id
end
