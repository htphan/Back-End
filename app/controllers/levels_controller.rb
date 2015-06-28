class LevelsController < ApplicationController

  def new
    @level = Level.new(properties: params[:properties])
    if @level.save
    render json: { level: @level.as_json(only: [:properties]) },
           status: :created
    else
      render json: { errors: @level.errors.full_messages },
             status: :unprocessable_entity
    end

  end

  def show
    @level = Level.find(params[:id])
    properties = eval(@level.properties)
    if @level
    render json: { level: {id: @level.id, properties: properties} },
           status: :ok
    else
      render json: { errors: @level.errors.full_messages },
             status: :bad_request
    end
  end

  def index
    @level = Level.all
    if @level
    render json: { level: @level.as_json(only: [:properties]) },
        status: :ok
    else
      render json: { errors: @level.errors.full_messages },
             status: :bad_request
    end
  end

end

