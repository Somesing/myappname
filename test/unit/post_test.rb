require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Fpostnew" do
  	post = Post.new
  	assert post.save
  end

end