class CatPostsController < ApplicationController
  before_action :set_cat_post, only: %i[ show update destroy ]

  # GET /cat_posts
  def index
    @cat_posts = CatPost.all

    render json: @cat_posts
  end

  # GET /cat_posts/1
  def show
    render json: @cat_post
  end

  # POST /cat_posts
  def create
    @cat_post = CatPost.new(cat_post_params)

    if @cat_post.save
      render json: @cat_post, status: :created, location: @cat_post
    else
      render json: @cat_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cat_posts/1
  def update
    if @cat_post.update(cat_post_params)
      render json: @cat_post
    else
      render json: @cat_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cat_posts/1
  def destroy
    @cat_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_post
      @cat_post = CatPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cat_post_params
      params.require(:cat_post).permit(:name, :age, :color)
    end
end
