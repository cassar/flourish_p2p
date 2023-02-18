require "test_helper"

class AdvertisementTest < ActiveSupport::TestCase
  test "requires a cents" do
    error = assert_raises ActiveRecord::RecordInvalid do
      Advertisement.new.save!
    end
    assert_match /Cents can't be blank/, error.message
  end

  test "amount returns proper format" do
    assert_equal "$100.00", advertisements(:one).amount
  end
end
