class CommentsController < ApplicationController

  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.text
      format.xml {render :xml => @posts}
      format.atom
  end


  def create
    @posts = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    @comment.save

    redirect_to @post
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  #  @redirect_to @comment.post
    end
  end
end
