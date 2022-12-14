# frozen_string_literal: true

module Users
  #= Users::RegistrationsController
  #
  # Overrides default devise Registrations
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: %i[create]

    private

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(
        :sign_up,
        keys: %i[name surname]
      )
    end
  end
end
