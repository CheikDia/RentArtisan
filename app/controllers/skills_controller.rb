class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.save
    redirect_to skill_path(@skill)
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.update(skill_params)
    redirect_to skill_path(@skill)
  end

  private

  def find_skill
    @skill = skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:skill)
  end
end
