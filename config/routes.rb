Rails.application.routes.draw do
  # WYSIWYG Editor
  post "/upload_image" => "upload#upload_image", :as => :upload_image
  post "/upload_file" => "upload#upload_file", :as => :upload_file
  get "/download_file/:name" => "upload#access_file", :as => :upload_access_file, :name => /.*/

  # Devise
  devise_for :users

  # Controllers
  resources :articles
  
  # Root
  root to: "articles#index"
end
