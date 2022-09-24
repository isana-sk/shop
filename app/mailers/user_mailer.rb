class UserMailer < ApplicationMailer
  def notification
    @greeting = "Hi"

    mail to: "vs1314253@gmail.com", subject: "You aded new product!"
  end
end
