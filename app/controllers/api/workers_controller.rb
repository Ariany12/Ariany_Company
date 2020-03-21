class Api::WorkersController < ApplicationController
  def index
   @funcionarios = Funcionario.all
    render 'index.json.jb'
  end

  def show
    @funcionario = Funcionario.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @funcionario = Funcionario.new(
    id: params[:name],  
    name: params[:name],
    position: params[:position],
    salary: params[:salary],
    manager: params[:id]
    
    )
    @funcionario.save
    render 'show.json.jb'
  end

  def update
    # @funcionario =Funcionario.find_by(id: params [:id]) 
    # @funcionarios.update(
    # name: params[:name] || funcionario.name,
    # position: params[:position] || funcionario.position,
    # salary: params[:salary] || funcionario.salary,
    # manager: Manager.all.find_by(id: funcionario.params[:manager_id]).name || Manager.all.find_by(id: funcionario.manager_id).name

    # )
    # render 'show.json.jb'
  end

  def destroy
  end

end
