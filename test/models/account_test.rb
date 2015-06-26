require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test "should not save account without fields" do
    account = Account.new
    assert_not account.save, "Saved the account without fields"
  end
end
