class AvatarsController < ApplicationController
  before_action :set_user

  def show
    @letters = @user.name.split.map(&:name).join.upcase[0..1]
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
