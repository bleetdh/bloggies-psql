class PostsController < ApplicationController
before_action :authenticate_user!,
              only: [:new, :edit]

  def index
    render html:'index'
  end

  def show
    render html:'show'
  end

  def new
    render html:'new'
  end

  def edit
    render html:'edit'
  end

end
