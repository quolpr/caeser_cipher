# :nodoc:
class UsersController < ApplicationController
  respond_to :json
  def create
    respond_with User::CreateCommand.proccess(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
