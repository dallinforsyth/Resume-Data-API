class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def create
    @skill = Skill.create(
      name: params[:name],
    )
    render :show
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render :show
  end
end
