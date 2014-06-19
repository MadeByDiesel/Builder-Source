class PostersController < ApplicationController

  def index
    @posters= Poster.all
  end

  def show
    @poster= Poster.find(params[:id])
    @jobs = @poster.jobs.all 
  end
end
