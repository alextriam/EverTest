class InvitesController < ApplicationController
  def index
    @invites = User.where(is_admin: false)
  end

  def new
    @invite = User.new
  end

  def create
    @invite = User.new(email: params[:email], password: params[:password], password_confirmation: params[:password], level_id: params[:level_id])

    if @invite.save
      InviteMailer.with(invite: @invite).invite_email(params[:email], params[:password]).deliver_now
      flash["alert alert-success"] = "Інвайт успішно створено та відправлено користувачеві"
      redirect_to root_path
    else
      render 'new'
    end
  end
end
