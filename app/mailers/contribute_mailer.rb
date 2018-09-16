class ContributeMailer < ApplicationMailer
  def contribute_mail(contribute)
    @contribute = contribute
    @mail = contribute.user.email
    mail to: @mail,subject:"Snap投稿完了のお知らせ"
  end
end
