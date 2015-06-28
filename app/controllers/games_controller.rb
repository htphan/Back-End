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

  def score
    @game = Game.find_by(username: params[:username],
                      map_id: params[:map_id])
    if @game
      render json: { game: @game.as_json(only: [:score]) }
    end
  end

  def update 
    @game = Game.where(params[:username],
                      params[:map_id])
    if @game
      @game.update(score: params[:score])
    end
  end

  def index
    @games = Game.all
    if @games
      render json: { level: @games.as_json(only: [:username, :score, :level_id]) },
        status: :ok
    else
      render json: { errors: @games.errors.full_messages },
        status: :bad_request
    end
  end



end