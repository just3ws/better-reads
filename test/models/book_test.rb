require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "book model validates presence of required fields" do
    book = Book.new
    assert_not book.save
    assert_equal [:author, :title], book.errors.as_json.keys.sort
  end

  test "book removes all linked reviews on destroy" do
    skip "TODO: need to implement the association cleanup"
  end
end
