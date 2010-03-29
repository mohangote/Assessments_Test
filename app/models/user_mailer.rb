class UserMailer < ActionMailer::Base
  def registration_confirmation(assessmentform)
    recipients assessmentform.email
    from       'ATCS Inc. <info@upgradeitskills.com>'
    subject    "Thank you for Registering for Free Assessment Test"
    body       :assessmentform => assessmentform
  end
end
