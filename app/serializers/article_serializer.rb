class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :body, :author, :slug, :img_url_front, :img_url_back, :img_url_middle, :color

  has_many :comments, :class => CommentSerializer
end
