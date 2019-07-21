class User::PostsController < ApplicationController
	#before_action :authenticate_user!, only: [:new, :edit, :create]
    def new
  		@post = Post.new
  	end

  	def index
  		@posts = Post.all.order(created_at: :desc)
  	end

  	def show
  		@post = Post.find(params[:id])
      @category = @post.category
  		@comments = @post.comments
  		@comment = Comment.new
  		@user = @post.user
  	end

  	def edit
  		@post = Post.find(params[:id])
  	end

  	def create
  		@post = Post.new(post_params)
  		@post.user_id = current_user.id
  		if @post.save
  			redirect_to user_posts_path
  		else
  			render :new
  		end
  	end

  	def update
  		@post = Post.find(params[:id])
    	if  @post.update(post_params)
        	redirect_to user_post_path(params[:id])
    	else
      		render :edit
    	end
  	end

  	def destroy
  		post = Post.find(params[:id])
  		post.destroy
  		redirect_to user_posts_path
  	end

  	private

  	def post_params
  		params.require(:post).permit(:image, :title, :body, :hospital, :cost, :user_id, :category_id)
  	end
end