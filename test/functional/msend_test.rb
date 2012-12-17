require 'test_helper'

class MsendTest < ActionMailer::TestCase
  test "send1" do
    mail = Msend.send1
    assert_equal "Send1", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
