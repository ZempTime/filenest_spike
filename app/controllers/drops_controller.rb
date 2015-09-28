class DropsController < ApplicationController
  def index
    @drop = Drop.freshest
    @uploads = Upload.all
  end

  def update
    @drop = Drop.find(params[:id])
    if @drop.update drop_params
      redirect_to drops_path, notice: "uploads successful!"
    else
      redirect_to drops_path, notice: "uploads did not work"
    end
  end

  private
    def drop_params
      params.require(:drop).permit(uploads_files: [] )
    end
end
