class User < ActiveRecord::Base
  attr_accessible :clearance, :name

  validates :name, :length => { 

  	:minimum => 2, 
  	:too_short => "Must have at least %{count} words"
  
  }

end
