class Comment < ActiveRecord::Base
  belongs_to :name
  attr_accessible :content
end
