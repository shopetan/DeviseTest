class Admin::BaseController < ApplicationController
  # ↓ これを追加
  before_filter :authenticate_admin_user!

  def index
  end
end
