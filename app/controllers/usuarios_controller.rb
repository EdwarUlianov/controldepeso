class UsuariosController < ApplicationController
    
  def new
    @usuario = Usuario.new
  end
  
  def show
    @usuario = Usuario.find(params[:id])
  end
    
  def create
    @usuario = Usuario.create(usuario_params)
    if @usuario.save 
      redirect_to "/usuarios/#{@usuario.id}", :notice => "Usuario Creado!"
    else
      render "new"
    end
  end
    
  private
    
  def usuario_params
    params.require(:usuario).permit(:nombre, :altura, :nacimiento, :sexo, :complexion)
  end

end