class DropsController < ApplicationController
  def index
    query = params[:q].presence || "*"
    @uploads = Upload.search(query)

    @drop = Drop.freshest
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
