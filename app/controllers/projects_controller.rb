class ProjectsController < ActionController
  def create
    @project = Project.find_or_create_by(value: params[:value],
                                         name: params[:name],
                                         level_id: params[:level_id])
    if @project.save
      render json: { project: @project.as_json(only: [:value, :name, :level_id]) },
             status: :created
    end
  end

  def show
    @project = Project.find(params[:level_id])
      render json: { project: @project.as_json(only: [:value, :name, :level_id]) },
        status: :ok
  end

  def index
    @project = Project.all
      render json: {project: @project.as_json(only: [:value, :name, :level_id]) },
        status: :ok
  end
end