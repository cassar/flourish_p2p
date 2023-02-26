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

  test "has many claims" do 
    assert_includes advertisements(:one).claims, claims(:one)
  end

  test "amount_claimed returns proper amount" do 
    assert_equal "$10.00", advertisements(:one).amount_claimed
  end
end
