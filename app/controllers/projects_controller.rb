class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end

  def create
    @project = Project.find_or_initialize_by(project_params)

    if @project.save
      render json: @project, status: :accepted
    else
      render json: {errors: @project.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      render json: @project, status: :accepted
    else
      render json: {errors: @project.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
  end

  private
  def project_params
    params.require(:project).permit!
  end
end
