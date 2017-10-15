Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'authentication#login'
  
  get "articles" => "article#index"
  get "articles/new" => "article#new", as: "create_article_page"
  post "articles/create" => "article#create", as: "create_article"

  get "articles/edit/:id" => "article#edit", as: "edit_article_page"
  patch "articles/update/:id" => "article#update", as: "edit_article"

  get "home" => "pages#home" 
 
  get "logout" => "authentication#logout"
  get "login" => "authentication#login", as: "login"
  post "authenticate" => "authentication#authenticate", as: "authenticate"
end
