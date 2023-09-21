class MunicipesController < ApplicationController
  before_action :set_model, only: :edit

  def index
    @municipes = model_class.all
  end

  def new
    @municipe = model_class.new
    @municipe.build_address
  end

  def create
    @municipe = model_class.new(municipe_params)
    if @municipe.save
      redirect_to municipes_path, notice: 'Dados Cadastrados com Sucesso!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @municipe.update(municipe_params)
      redirect_to municipes_path, notice: "Dados Atualizados com Sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_model
    @municipe = model_class.find(params[:id])
  end

  def model_class
    Municipe
  end

  def municipe_params
    params.require(:municipe).permit(
      :full_name, :cpf, :cns, :email, :birthdate, :phone, :status, address_attributes: [:id, :zipcode, :street_name, :number, :neighborhood, :city, :state, :complement, :ibge, :_destroy])
  end
end
