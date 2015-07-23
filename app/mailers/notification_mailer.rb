class NotificationMailer < ActionMailer::Base
  default from: "no-replay@nomsterapp.com"

  def comment_added
  	mail(to: "davidslee101@gmail.com",
  			subject: "A comment has been added to your place")
  end
end
