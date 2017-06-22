class StaticsController < ApplicationController
  def home
    @posts = Post.paginate(:page => params[:page], :per_page => 7)
    @doctors = Doctor.all
  end
end
