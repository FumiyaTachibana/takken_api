class Admin::BaseController < ApplicationController
  before_filter :authenticate_admin_admin_user!
  protect_from_forgery with: :exception
end
