Rails.application.routes.draw do
  resources :portfolios, except: [:show]
# right here, we can see that we added some custom routing for our resources routes, which were prebuilt restful routes.  we make an exception with comma and colon notation and specify within square brackets whatever we want to customize, then, we create a noather get route like usual.  now the path is changed, and we need to change the path inside of our view, because it expects something differnt, for this reason, we need to add an 'as' clause to create a custom PREFIX!
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # get 'pages/home' to get home, you shouldn't have to type home, yadig?
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
