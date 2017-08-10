class PostsController < ApplicationController

before_action :authenticate_user!,
              # only: [:new, :edit]   # new and edit canot be seen if not logged in
              except: [:index] # only index can be seen if not logged in

  def index
    @all_posts = current_user.posts
  end

  def show
    @current_post = Post.find(params[:id])
    render :show
  end

  def new
    @new_post = current_user.posts.build
  end

  def create
    # allowing mass assignment
    # creating_post = post_params
    # render json: @creating_post

    Post.create(post_params)

    redirect_to posts_path
  end

  def destroy
    deleted_post = Post.find(params[:id])
    deleted_post.destroy

    redirect_to posts_path

  end

  def edit
    @edited_post = Post.find(params[:id])
    # render :edit
  end

  def update

    # updated_post = Post.find(params[:id])
    #
    # updated_post.update(params[:post])
    @updated_post = Post.find(params[:id])

    @updated_post.update(post_params)

    # @updated_post.title = params[:post][:title]
    # @updated_post.content = params[:post][:content]

    redirect_to post_path
    # if @updated_post.save
  end


  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end

end
