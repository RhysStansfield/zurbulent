class ZurbMailer < ActionMailer::Base

  default from: "me@sandbox2114.mailgun.org"


  def new_zurb(zurb_stuff)
    @zurbing = zurb_stuff
    # @zurbing.email.inspect
    mail to: "rhys@onlinesalesgrowth.com", subject: "New Zurb, All Hail the Glory of the Zurb Empire!"
  end

end