class PostersController < ApplicationController

  def index
    @poster= Poster.find(params[:id])
  end
end
