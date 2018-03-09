json.articles @articles, partial: 'endpoints/articles/article', as: :article
json.page @page
json.total_articles @article_count
