class HomeController < ApplicationController
  layout 'private', only: :dashboard

  def index
  end

  def dashboard
    @username = "Guest"
  end
end
