require "test_helper"

class BookTest < ActiveSupport::TestCase

	test "should not save book without name" do
		book = Book.new
		assert book.save
	end
  
end
