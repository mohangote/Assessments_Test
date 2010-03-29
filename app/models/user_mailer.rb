class UserMailer < ActionMailer::Base
  def registration_confirmation(assessmentform)
    recipients assessmentform.email
    from       'uupgradeitskills@gmail.com'
    subject    "Thank you for Registering for Free Assessment Test"
    body       :assessmentform => assessmentform
  end
end
