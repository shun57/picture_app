class ContributeMailer < ApplicationMailer
  def contribute_mail(contribute)
    @contribute = contribute
    @mail = contribute.user.email
    mail to: @mail,subject:"お問い合わせの確認メール"
  end
end
