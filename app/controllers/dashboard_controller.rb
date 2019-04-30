class DashboardController < ApplicationController
  before_action :authenticate_usuario! 
  layout 'dashboard'
  def index
  end
end
