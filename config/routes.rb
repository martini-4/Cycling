Rails.application.routes.draw do
  resources :events
  devise_for :owners
  devise_for :admins
  devise_for :users
  namespace :admin do
  	resources :replies, only: [:new, :create]
  	resources :inquiries, only: [:index]
  	resources :massages, only: [:show, :destroy]
  	resources :rooms, only: [:index]
  	resources :contracts, only: [:index, :show]
  	resources :owners, only: [:index, :show]
  	resources :new_owners, only: [:index, :edit, :update, :destroy]
  	resources :users, only: [:index, :show]
  	resources :new_users, only: [:index, :edit, :update, :destroy]
    resources :bicycles, only: [:index, :show, :edit, :update, :destroy]
  end
  namespace :owner do
  	resources :messages, only: [:index, :create, :destroy]
  	resources :rooms, only: [:index]
  	resources :payees, only: [:edit, :update, :create]
  	resources :contracts, only: [:index, :show]
  	resources :lend_days, only: [:edit, :update, :destroy]
  	resources :owners, only: [:show, :edit, :update, :destroy]
  	resources :bicycle_pictures, only: [:update, :destroy]
  	resources :lend_spots, only: [:destroy]
  	resources :return_spots, only: [:destroy]
  	resources :exhibition_spots, only: [:destroy]
  	resources :bicycle_accessories, only: [:destroy, :create]
  	resources :bicycles
  	get 'owners/withdrawal'
  end
  namespace :user do
  	resources :reviews, only: [:create, :destroy]
  	resources :users, only: [:show, :edit, :update, :destroy]
  	resources :messages, only: [:show, :create, :destroy]
  	resources :rooms, only: [:index, :create]
  	resources :contracts, only: [:index, :show, :new, :create]
    get 'contracts/confirm'
    get 'users/withdrawal'
  end
	resources :inquiries, only: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'root#about'
  get 'top'   => 'root#top'
  get 'city'  => 'root#city'
  get 'wait'  => 'root#wait'
  get 'unsubscribe' => 'root#unsubscribe'
  get 'admin_menu'    => 'root#admin_menu'
  get 'bicycle_index' => 'root#bicycle_index'
end
