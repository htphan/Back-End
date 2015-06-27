class MapController < ActiveRecord::Base
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
    @map = Map.find(params[:budget, :name])
    render json: { map: @map.as_json(only: [:budget, :name]) },
           status: :ok
  end


end