require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
  test "sendgrid_topic" do
    mail = NoticeMailer.sendgrid_topic
    assert_equal "Sendgrid topic", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
