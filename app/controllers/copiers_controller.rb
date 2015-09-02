class CopiersController < ApplicationController

  def index
    @copiers = Copier.all
  end

  def new
    @copier = Copier.new
  end

  def create
    @copier = Copier.new(params[:copier])
    if @copier.save
      redirect_to copiers_path, notice: "Kserokopiarka została dodana."
    else
      render "new"
    end
  end

  def edit
    @copier = Copier.find(params[:id])
  end

  def update
    @copier = Copier.find(params[:id])
    if @copier.update_attributes(params[:copier])
      redirect_to copiers_path, notice: "Kserokoparka została zaktualizowana."
    else
      render "edit"
    end
  end

  def destroy
    @copier = Copier.find(params[:id])
    @copier.destroy!
    redirect_to copiers_path, notice: "Kserokopiarka została usunięta."
  end
end
