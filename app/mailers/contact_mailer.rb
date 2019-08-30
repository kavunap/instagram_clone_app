class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: "from@example.com", subject: "confirmation e-mail of inquiry"
  end
end
