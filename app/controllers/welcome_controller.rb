class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :mailtest]
  def index
  end

  def mailtest
    TestMailer.with(random: "iets").test_email.deliver_later
    redirect_to root_path
  end
end
