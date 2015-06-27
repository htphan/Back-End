class GamesController < ApplicationController

  def create
    @game = Game.new(map_id: params[:map_id],
                     username: params[:username])

    if @game
      render json: { game: @game.as_json(only: [:map_id, 
                                                :score,
                                                :username]) },
      status: :created
    else 
      render json: { errors: @game.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  def show
    @game = Game.find(params[:username],
                      params[:map_id])
    if @game
      render json: { game: @game.as_json(only: [:score]) },
    end
  end

  def update 
    @game = Game.find(params[:username],
                      params[:map_id])
    if @game
      
  end







end