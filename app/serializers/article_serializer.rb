class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :body, :author, :slug

  has_many :comments, :class => CommentSerializer
end
