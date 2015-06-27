class ConsultantsController < ApplicationController

  def create 
    @consultant = Consultant.find_or_create_by(name: params[:name],
                                               cost: params[:cost])
    if @consultant
      render json: { consultant: @consultant.as_json(only: [:name, 
                                                :cost]) },
      status: :created
    else
      render json: { errors: @consultant.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  def index
    @consultants = Consultant.all
    render json: { consultants: @consultants.as_json(only: [:name, 
                                                            :cost]) },
    status: :ok
  end

  def show
    @consultant = Consultant.find_by(name: params[:name])
    if @consultant
      render json: { consultant: @consultant.as_json(only: [:name,
                                                            :cost]) },
      status: :ok
    end 
  end

end