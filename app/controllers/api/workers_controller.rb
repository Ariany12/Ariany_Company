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
    id: params[:id],  
    name: params[:name],
    position: params[:position],
    salary: params[:salary],
    manager_id: params[:manager_id]
    
    )
    @funcionario.save

    if @funcionario.save
      render 'show.json.jb'
    else 
      render json: {errors: @funcionario.errors.full_messages}
    end
  end

  def update
    @funcionario = Funcionario.find_by(id: params[:id]) 
    @funcionario.update(
    @funcionario.name: params[:name] || @funcionario.name,
    @funcionario.position: params[:position] || @funcionario.position,
    @funcionario.salary: params[:salary] || @funcionario.salary,
    #@funcionario.manager: Manager.all.find_by(id: @funcionario.params[:manager_id]).name || Manager.all.find_by(id: @funcionario.manager_id).name

    )
    if @funcionario.update 
      render 'show.json.jb'
    else 
      render json: {errors: @funcionario.errors.full_messages}
    end
  end

  def destroy
    @funcionario = Funcionario.find_by(id: params[:id]) 
    @funcionario = @Funcionario.delete_all

    if @funcionario.delete_all
      render json: {message: "Product has been removed"}
    else 
      render json: {errors: @funcionario.errors.full_messages}
    end
  end

end
