class InvitationsController < ApplicationController
  include ActionView::Helpers::UrlHelper

  before_action :authenticate_user!

  def index
  end

  def new
    @email = params[:email]
    @number = params[:number]
    InviteMailer.invitation(@email, @number).deliver
    flash[:notice] = "Email sent"
    redirect_to '/email'
  end

  private

  def show_params
    params.permit(:email)
    params.require(:email)
    params
  end
end
