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

    #Rails.logger.info "a=" + a.inspect
    #Rails.logger.info "a_to_b=" + a_to_b.inspect
    #Rails.logger.info "a.exits=" + a.exits.inspect
    assert_same( a.exits.first.id, a_to_b.id )
  end
end
