class PostsController < ApplicationController
  before_action :set_posts, only: [:show, :update, :destroy, :edit]
  def index
    @notes = Post.all
  end

  def new
    @note = Post.new
  end

  def create
    @note = Post.new(posts_params)
    if @note.save
      redirect_to post_path(@note)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def update
    @note.update(posts_params)
    redirect_to post_path(@note)
  end

  def destroy
    @note.destroy
    redirect_to dreams_path, status: :see_other
  end

  def edit
  end

  private

  def set_posts
    @note = Post.find(params[:id])
  end

  def posts_params
    params.require(:post).permit(:title, :note, :date_dream)
  end
end
