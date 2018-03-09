json.articles @articles, partial: 'endpoints/articles/article', as: :article
json.page @page
json.total_pages @articles.total_pages
