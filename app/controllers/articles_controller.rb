class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :create,:new, :delete]

  before_action :find_post, only: [:edit, :update, :show, :delete]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.new(article_params)

    if @article.save
    	flash[:notice] = "Successfully created!"
    	redirect_to articles_path

    else
    	flash[:alert] = "Error creating new post!"
    	render :new

    end
  end

  def edit

  end

  def update 

    if @article.update_attributes(article_params)
      flash[:notice] = "Successfully updated post!"
      redirect_to article_path(@article)
    else
      flash[:alert] = "Error updating post!"
      render :edit
    end

  end

  def destroy
    
    if @article.destroy
      flash[:notice] = "Successfully deleted post!"
      # redirect_to posts_path
    else
      flash[:alert] = "Error updating post!"
    end

  end


  private

  def article_params
    params.require(:article).permit(:title, :article_details, :user_id)
  end

  def find_post
    @article = Article.find(params[:id])
  end

end
