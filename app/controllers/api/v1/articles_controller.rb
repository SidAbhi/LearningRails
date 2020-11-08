module Api
  module V1
    class AirlinesController < ActionController
      def index
        articles = Article.all

        render json: AirlineSerializer.new(airlines, options).serialized_json
      end

      def show
        article = Article.find_by(slug: params[:slug])

        rednder json: ArticleSerializer.new(article, options).serialized_json
      end

      def create
        article = Article.new(airline_params)

        if airline.save
          rende json: ArticleSerializer.new(article).serialized_json
        else
          render json: {error.article.error.messages}, status: 422
        end
      end

      def update
        article = Article.find_by(slug: params[:slug])

        if airline.update(airline_params)
          rende json: ArticleSerializer.new(article, options).serialized_json
        else
          render json: {error.article.error.messages}, status: 422
        end
      end

      def destroy 
        article = Article.find_by(slug: params[:slug])

        if airline.destroy
          head :no_content
        else
          render json: {error.article.error.messages}, status: 422
        end
      end

      private

      def article_params
        params.require(:article).permit(:title, :body)
      end

      def options
        @options ||= { include: %i[comments]}
      end
    end
  end
end