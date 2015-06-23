class Api::PostsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @posts = Post.all
  end

  def show
    set_post
  end

  def create
    @post = Post.new post_params

    if @post.save!
      render :show, status: 201
    else
      render json: { error: 'You failed' }, status: 422
    end
  end

  def update
    set_post
    if @post.update_attributes post_params
      render :show, status: 200
    else
      render json: { error: 'You failed' }, status: 422
    end
  end

  def destroy
    set_post
    @post.destroy
  end

  private

    def set_post
      @post = Post.find params[:id]
    end

    def post_params
      params.require(:post).permit(:title, :author, :content)
    end

end
