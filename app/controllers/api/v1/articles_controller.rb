module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.all

        render json: ArticleSerializer.new(articles, options).serialized_json
      end

      def show
        article = Article.find_by(slug: params[:slug])

        render json: ArticleSerializer.new(articles, options).serialized_json
      end

      def create
        article = Article.new(airline_params)

        if airline.save
          render json: ArticleSerializer.new(articles).serialized_json
        else
          render json: { error: article.error.messages }, status: 422
        end
      end

      def update
        article = Article.find_by(slug: params[:slug])

        if airline.update(airline_params)
          render json: ArticleSerializer.new(articles, options).serialized_json
        else
          render json: { error: article.error.messages }, status: 422
        end
      end

      def destroy 
        article = Article.find_by(slug: params[:slug])

        if airline.destroy
          head :no_content
        else
          render json: { error: article.error.messages }, status: 422
        end
      end

      private

      def article_params
        params.require(:article).permit(:title, :body)
      end

      def options
        @options ||= { include: %i[comments] }
      end
    end
  end
end