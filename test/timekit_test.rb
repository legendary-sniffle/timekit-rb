require_relative "./test_helper"

class TimekitTest < Minitest::Test
  describe "foo" do
    it "does something falsy" do
      refute false
    end

    it "does something truthy" do
      assert true
    end
  end
end
