class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :img_url_front
      t.string :img_url_middle
      t.string :img_url_back
      t.string :color
      t.string :slug

      t.timestamps
    end
  end
end
