class ContactMailer < ApplicationMailer

  ADMIN_EMAIL = "teachingmatrialsapp@gmail.com"

  def user_email(contact)
    @contact = contact
    @name = contact.name.present? ? contact.name : contact.email
    subject = "【教材シェア】お問い合わせを受付いたしました"

    mail(to: contact.email, subject: subject)
  end

  def admin_email(contact)
    @contact = contact
    @name = contact.name.present? ? contact.name : contact.email
    subject = "【教材シェア】お問い合わせがありました"

    mail(to: ADMIN_EMAIL, subject: subject)
  end
end
