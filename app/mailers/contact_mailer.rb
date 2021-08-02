class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send_when_update.subject
  #
  def applied(apply)
    @apply = apply
    mail to:      @apply.email,
         subject: '新規応募がありました。'
  end
end
