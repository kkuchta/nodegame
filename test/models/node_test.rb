require 'test_helper'

class NodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "exits works" do

    a = Node.create
    b = Node.create
    a_to_b = Path.create( { start_node: a, end_node: b } )
    b_to_a = Path.create( { start_node: b, end_node: a } )
    c_to_d = Path.create( { start_node: Node.create, end_node: Node.create } )

    assert_same( a.exits.first.id, a_to_b.id )
    assert_equal( a.exits.count, 1 )

    assert_same( b.exits.first.id, b_to_a.id )
    assert_equal( b.exits.count, 1 )
  end

  test "max_exits properly initialized" do

    [0..10].each do |i|
      a = Node.create

      assert( a.max_exits > 0 )
      assert( a.max_exits < 4 )
    end
  end
end
