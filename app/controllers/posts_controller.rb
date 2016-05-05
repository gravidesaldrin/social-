class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at desc")
    @last_posts = Post.order("created_at desc")
    @posts_cola = []
    @posts_colb = []
    @posts.each_with_index do |p,i|
      # for two columns
      if (i % 2 == 0)
        @posts_cola.push(p)
      else
        @posts_colb.push(p)
      end
    end
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new post_params
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end
  private
  def post_params
    params.require(:post).permit :id, :content, :positive, :user_id
  end
end
