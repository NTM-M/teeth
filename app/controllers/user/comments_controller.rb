class User::CommentsController < ApplicationController

	def create
		post = Post.find(params[:post_id])
		comment = current_user.comments.new(comment_params)
		comment.post_id = post.id
		if comment.save
			flash[:notice] = 'コメントしました！'
			redirect_to comment.post
		else
		end
 	end
 	
	private

	def comment_params
	 params.require(:comment).permit(:user_id, :post_id, :content)
	end
end
