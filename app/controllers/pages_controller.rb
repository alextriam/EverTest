class PagesController < ApplicationController
  def index
    if current_user.is_admin
      render '/pages/_admin_page'
    else
      render '/pages/_user_page'
    end
  end
end
