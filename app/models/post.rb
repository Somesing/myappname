class Post < ActiveRecord::Base
  belongs_to :name
  attr_accessible :content, :title
end
