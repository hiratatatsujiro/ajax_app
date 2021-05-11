class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "desc")
  end

  # コメントアウトする
  # def new
  # end

 def create
  #binding.pry
  post = Post.create(content: params[:content])
  render json:{ post: post }
end

end
