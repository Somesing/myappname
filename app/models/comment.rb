class Comment < ActiveRecord::Base

  attr_accessible :content, :name

  validates :name, :length => {

  	:minimum => 2

  }

  validates :content, :length => {

  	:minimum => 2,
  	:maximum => 500,
  	:too_short => "Must have at least %{count} words",
  	:too_long => "Must have at most %{count} words"

  }

end
