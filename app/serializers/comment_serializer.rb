class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :body, :author, :score, :article_id
end
