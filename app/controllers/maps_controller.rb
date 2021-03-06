class MapsController < ApplicationController
  def create
    @map = Map.new(budget: params[:budget],
                   name: params[:name])
    if @map.save
      render json: { map: @map.as_json(only: [:budget, :name]) },
             status: :created
    else
      render json: { errors: @map.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def index
    @map = Map.all
    render json: { map: @map.as_json(only: [:budget, :name]) },
           status: :ok
  end

  def show
    @map = Map.find_by(name: params[:name])
    if @map
      render json: { map: @map.as_json(only: [:budget, :name]) },
             status: :ok
    end
  end


end