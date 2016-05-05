class StaticsController < ApplicationController
  layout :choose_layout
  def home
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
  def about
  end
  def contact
  end
  private
  def choose_layout
    if user_signed_in?
      "user"
    else
      "application"
    end
  end
end
