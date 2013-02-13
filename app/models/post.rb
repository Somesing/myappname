class Post < ActiveRecord::Base
  belongs_to :name
  attr_accessible :content, :title, :isVisible

  def make_invisible
    isVisible = false
  end

end
