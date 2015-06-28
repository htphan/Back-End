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
    @level = Level.find_by(id: params[:id])
    if @level
      properties = eval(@level.properties)
      render json: { level: {id: @level.id, properties: properties} },
           status: :ok
    else
      render json: { errors: "No valid Level! Mwahaha" },
             status: :bad_request
    end
  end

  def index
    @level = Level.all
    render json: { level: @level.as_json(only: [:properties]) },
        status: :ok
    end
  end

end

