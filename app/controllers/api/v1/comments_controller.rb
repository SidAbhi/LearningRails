module Api
  module V1
    class CommentsController < ApplicationController

      def create
        comment = Comment.new(review_params)
        if comment.save
          render json: CommentSerializer.new(comment).serialized_json
        else
          render json: {error: comment.errors.messages}, status: 422
        end
      end

      def destroy
        comment = comment.find_by(params[:id])

        if comment.destroy
          head :no_content
        else
          render json: {error: comment.errors.messages}, status: 422
        end
      end

      private

      def comment_params
        params.require(:comment).permit(:body, :score, :article_id)
      end
    end
  end
end