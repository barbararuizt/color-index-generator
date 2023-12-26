class ColorsController < ApplicationController
  def index
    @colors = Color.all
  end

  def show
    @color = Color.find(params[:id])
  end

  def new
    @color = Color.new
  end

  def create
    @color = Color.new(color_params)
    @color.save!
    # redirect_to color_path(@color)
    
    redirect_to root_path, notice: 'Your model was successfully created.'
  end

  def color_params
  params.require(:color).permit(:title, :hex)
  end

  def destroy
    @color = Color.find(params[:id])
    @color.destroy

    redirect_to root_path, notice: 'Your model was successfully destroyed.'
  end
end
