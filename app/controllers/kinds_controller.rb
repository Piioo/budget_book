class KindsController < ApplicationController
  def new
    @kind = Kind.new
  end

  def create
    @kind = Kind.new(kind_params)
    if @kind.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def kind_params
    params.require(:kind).permit(:name, :description, :kind)
  end
end
