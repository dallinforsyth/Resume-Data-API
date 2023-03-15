class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render :index
  end
end
