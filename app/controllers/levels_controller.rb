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
    render json: @level
  end

  def index
    @level = Level.all
    render json: { level: @level.as_json(only: [:properties]) },
        status: :ok
  end

end

