class ProjectsController < ApplicationController
  def create
    @project = Project.find_or_create_by(value: params[:value],
                                         name: params[:name],
                                         map_id: params[:map_id])
    if @project.save
      render json: { project: @project.as_json(only: [:value, :name, :map_id]) },
             status: :created
    end
  end

  def show
    @project = Project.find_by(params[:level_id])
    if @project
      render json: { project: @project.as_json(only: [:value, :name, :map_id]) },
        status: :ok
    end
  end

  def index
    @project = Project.all
      render json: {project: @project.as_json(only: [:value, :name, :map_id]) },
        status: :ok
  end
end