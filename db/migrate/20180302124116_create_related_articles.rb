class CreateRelatedArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :related_articles, id: false do |t|
      t.integer :article_id
      t.integer :related_id
    end

    add_index(:related_articles, [:article_id, :related_id], :unique => true)
    add_index(:related_articles, [:related_id, :article_id], :unique => true)
  end
end
