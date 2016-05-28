# :nodoc:
class CiphersController < ApplicationController
  respond_to :json
  def show
    respond_with user.cipher
  end

  def update
    cipher.update_attributes(cipher_params)
    respond_with cipher
  end

  private

  def user
    @user ||= User.friendly.find(params[:user_id])
  end

  def cipher
    @cipher ||= user.cipher
  end

  def cipher_params
    params.require(:cipher).permit(
      :shift, :message
    )
  end
end
