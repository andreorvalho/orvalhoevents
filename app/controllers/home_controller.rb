class HomeController < ApplicationController
  include ActionView::Helpers::UrlHelper

  before_action :authenticate_user!
  before_action :redirect_to_fuego

  def index

  end

  private

  def redirect_to_fuego
    redirect_to '/fuegofest' if current_page?(root_url)
  end
end
