require_relative "./test_helper"

class TimekitTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Timekit::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
