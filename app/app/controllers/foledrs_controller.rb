class FoledrsController < ApplicationController

  def new
    @folder=Folder.new
  end

  def create
    @folder=Folder.new(folder_params)
  
    if @folder.save
      redirect_to @folder,notice:'File was Successfully uploaded'
    else
      render :new
    end
  end

  private 
  def folder_params
    params.required(:folder).permit(,:file)
  end
  
end
