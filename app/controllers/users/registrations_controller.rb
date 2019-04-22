class Users::RegistrationsController < Devise::RegistrationsController
  skip_before_action :require_no_authentication
  before_action :authenticate_user!
  before_action :is_admin?

  private

  def is_admin?
    redirect_to root_path unless current_user.has_role?(:admin)
  end
end