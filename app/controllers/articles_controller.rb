class ArticlesController < ApplicationController
  # before_action :set_article, only: %i[ show update destroy ]
  # before_action :authorize

  # GET /articles
  skip_before_action :authorized, only: [:show]

  def index
    articles = Article.all
    render json: articles
  end

  
  # POST /articles
  def create
    response = Cloudinary::Uploader.upload(params[:cover_photo])
    user = current_user()
    set = Article.create!(title: params[:title], content: params[:content], user_id: user.id , tag_id: 1, cover_url: response['url'], description: params[:description])
    if set
      render json: set, status: :created, location: @article
    else
      render json: set.errors, status: :unprocessable_entity
    end
  end
  def show 
    # byebug
    article = Article.find_by(title: params[:id])
    render json: article
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.permit(:title, :content)
    end

    def authorize
      return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
     end
end
