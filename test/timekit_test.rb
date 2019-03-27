require_relative "./test_helper"

class TimekitTest < Minitest::Test
  describe "foo" do
    it "has a version number" do
      refute_nil Timekit::VERSION
    end

    it "does something falsy" do
      refute false
    end

    it "does something truthy" do
      assert true
    end
  end
end
