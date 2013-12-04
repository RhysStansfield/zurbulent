class ZurbsController < ApplicationController

  def create
    Zurb.create(params[:zurb].permit(:name, :face_crumps, :email))
    redirect_to '/'
  end

end
