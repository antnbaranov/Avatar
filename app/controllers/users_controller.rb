class UsersController < ApplicationController
  before_action :set_user, only: :show

  def show
    @letters = @user.name.upcase[0..1]

  end

  private

  def set_user
    @user = User.find_by name: params[:name]
  end

end
