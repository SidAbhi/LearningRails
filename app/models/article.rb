class Article < ApplicationRecord
  has_many :comments

  before_create :slugify

  def slugify
    self.slug = title.parameterize
  end

  def avg_score
    return 0 unless comments.count.positive
    
    comments.average(:score).round(2).to_f
  end
end
