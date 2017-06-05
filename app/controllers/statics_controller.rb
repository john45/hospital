class StaticsController < ApplicationController
  def home
    @posts = Post.all
    @doctors = Doctor.all
  end
end
