class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendgrid_topic.subject
  #
  def sendgrid_topic(topic)
    @topic = topic

    mail to: "exhikkii@gmail.com",
      subject:'[facelibro]投稿されました'
  end
end
