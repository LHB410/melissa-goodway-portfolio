class ArtsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @arts = Art.all
  end

  def show
    @art = Art.find(params[:id])
  end

  private

  def art_params
    params.require(:art).permit(:title, :description, :photo)
  end
end
