require "test_helper"

class ClaimTest < ActiveSupport::TestCase
  test "belongs to advertisement" do
    assert_equal advertisements(:one), claims(:one).advertisement
  end
end
