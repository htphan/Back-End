class BlocksController < ApplicationController

  def new
    @block = Block.new(x: params[:x],
                       y: params[:y],
                       height: params[:height],
                       width: params[:width],
                       map_id: params[:map_id])

    if @block
      render json: { block: @block.as_json(only: [:map_id, 
                                                  :x,
                                                  :y,
                                                  :height,
                                                  :width]) },
      status: :created
    else 
      render json: { errors: @block.errors.full_messages },
      status: :unprocessable_entity
    end
  end


end