class Site::HomeController < ApplicationController
	before_action :authenticate_user!
	layout "site"
  def index
  end
end
