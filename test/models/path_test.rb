require 'test_helper'

class PathTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "path is enum" do
    p = Path.new()
    p.state = "badstate"
    refute p.save()

    p.state = "open"
    assert p.save()
  end

  test "can set endpoints" do
    p = Path.create( start_node: Node.create, end_node: Node.create )
    assert_not_nil Path.find(p.id).start_node
    assert_not_nil Path.find(p.id).end_node
  end

end
