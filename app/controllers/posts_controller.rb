class PostsController < ApplicationController

before_action :authenticate_user!,
              # only: [:new, :edit]   # new and edit canot be seen if not logged in
              except: [:index] # only index can be seen if not logged in

  def index
    @all_posts = current_user.posts
  end

  def show
    render html:'show'
  end

  def new
    @new_post = current_user.posts.build
  end

  def edit
    render html:'edit'
  end

  def create
    # allowing mass assignment
    creating_post = params.require(:post).permit(:title, :content, :user_id)
    # render json: @creating_post

    Post.create(creating_post)

    redirect_to posts_path
  end

  def update
    render html:'update'
  end

  def destroy
    deleted_post = Post.find(params[:id])
    deleted_post.destroy

    redirect_to posts_path

  end

end
