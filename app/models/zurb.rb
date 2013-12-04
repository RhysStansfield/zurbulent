class Zurb < ActiveRecord::Base
  after_create :send_zurbling_email

  def send_zurbling_email
    mail = ZurbMailer.new_zurb(self)
    mail.deliver
  end
  
end
