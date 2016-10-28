class CommentsController < ApplicationController

 
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:id])
    @comment = @article.comments.new(comment_params)
    
    if @comment.save
      flash[:notice] = "Successfully saved!"
      redirect_to 'comments/form'
    else
      flash[:alert] = "Error creating a comment!"
      render :new
    end
  end

  def edit

  end

  def update

    if @comment.update_attributes(comment_params)
      flash[:noitce] = "Successfully updated comment!"
      redirect_to article_path(@article)
    else
      flash[:alert] = "Error updating post!"
    end


  end

  def destroy
    @comment = Comment.find(params[:id])

    if @comment.destroy
      flash[:notice] = "Successfully deleted post!"
      redirect_to :back
    else
      flash[:alert] = "Error updating comment"
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:message, :article_id, :user_id)
  end


end
