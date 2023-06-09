class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    redirect_to controller: :activities,
                action: :index if user_signed_in?
  end
end
