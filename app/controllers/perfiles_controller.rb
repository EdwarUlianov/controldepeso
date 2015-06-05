class PerfilesController < ApplicationController

  def index
    @perfiles = Perfil.all
  end

  def new
    @perfil = Perfil.new
  end

  def show
    @perfil = Perfil.find(params[:id])
  end

  def create
    @perfil = Perfil.create(perfil_params)
    if @perfil.save
      redirect_to @perfil, :notice => "Perfil Creado!"
    else
      render new_perfil_path
    end
  end

  def destroy

    @perfil = Perfil.destroy(params[:id])
    redirect_to perfiles_url
  end

  private

  def perfil_params
    params.require(:perfil).permit(:nombre, :altura, :nacimiento, :sexo, :complexion)
  end

end
