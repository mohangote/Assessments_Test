class UserMailer < ActionMailer::Base
  def registration_confirmation(assessmentform)
    recipients assessmentform.email
    from       "info@upgradeitskills.com"
    subject    "Thank you for Registering"
    body       :assessmentform => assessmentform
  end
end
