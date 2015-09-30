class DropsController < ApplicationController
  def index
    @drop = Drop.freshest
    query = params[:q].presence || "*"
    @uploads = Upload.search(query)

    respond_to do |format|
      format.html
      format.js
    end

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
