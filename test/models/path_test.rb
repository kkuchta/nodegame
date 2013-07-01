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

end
