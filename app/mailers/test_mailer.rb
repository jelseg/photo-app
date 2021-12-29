class TestMailer < ApplicationMailer
    def test_email()
        @user = User.first
        @url  = 'http://example.com/login'
        mail(to: "segers.jelle@hotmail.com", subject: params[:random])
      end
end
