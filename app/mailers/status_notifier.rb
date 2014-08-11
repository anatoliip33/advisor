class StatusNotifier < ActionMailer::Base
  default from: "advisor@example.com",
            subject: "hotel status"

  def send_mail(hotel)
    @hotel = hotel
    @title = hotel.title
    @status = hotel.status

    mail to: @hotel.user.email, subject: 'Your hotel status has been changed'
  end
end
