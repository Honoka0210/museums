Rails.application.routes.draw do
  devise_for :users
  
  get "up" => "rails/health#show", as: :rails_health_check

  get 'tweets/:tweet_id/likes' => 'likes#create'
  get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
  
 

 
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end

 resources :perfumes
 delete 'tweets/:id' => 'tweets#destroy' 
root 'tweets#index'

end

