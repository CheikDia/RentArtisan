class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @skills = Skill.search_skill(params[:query])
    else
      @skills = Skill.all
    end
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    if @skill.save
      redirect_to skill_path(@skill)
    else
      render :new
    end
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
    params.require(:skill).permit(:name, :photo, :unit_price, :description)
  end
end
