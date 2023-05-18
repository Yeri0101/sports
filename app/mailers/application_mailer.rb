class ApplicationMailer < ActionMailer::Base
  default from: "sports@sports.osc-fr1.scalingo.io"
  layout "mailer"
end
