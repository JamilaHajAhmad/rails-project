class PostsController < ApplicationController
    def create
        post = Post.new(post_params)
        if post.save
            post.comments.create(body: params[:comment][:body]) if params[:comment]
            redirect_to post_path(post), notice: "Post and comment created!"
        else
        render :new
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :content)
    end
end

