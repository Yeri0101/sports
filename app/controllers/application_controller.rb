class ApplicationController < ActionController::Base
  before_action :authenticate_user!,
                :configure_permitted_parameters,
                if: :devise_controller?

  include Pundit::Authorization

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "You are not allowed to perform this action"
    redirect_to(root_path)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: %i[
        address
        avatar
        city
        country
        country_code
        first_name
        last_name
        phone_number
        postcode
        state
      ]
    )
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: %i[
        address
        avatar
        city
        country
        country_code
        first_name
        last_name
        phone_number
        postcode
        state
      ]
    )
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
