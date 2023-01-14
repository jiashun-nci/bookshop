require "test_helper"

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	test "should not save author without name" do
		author = Author.new
		assert_not author.save
	end

  
end
