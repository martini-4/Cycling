Rails.application.routes.draw do
  devise_for :owners
  devise_for :admins
  devise_for :users
  namespace :admin do
  	resources :replies, only: [:new, :create]
  	resources :inquiries, only: [:index]
  	resources :massages, only: [:show, :destory]
  	resources :rooms, only: [:index]
  	resources :contracts, only: [:index, :show]
  	resources :bicycles, only: [:index, :edit, :update, :destory]
  	resources :owners, only: [:index, :show]
  	resources :new_owners, only: [:index, :edit, :update, :destory]
  	resources :users, only: [:index, :show]
  	resources :new_users, only: [:index, :edit, :update, :destory]
  end
  namespace :owner do
  	resources :messages, only: [:index, :create, :destory]
  	resources :rooms, only: [:index]
  	resources :payees, only: [:edit, :update, :create]
  	resources :contracts, only: [:index, :show]
  	resources :lend_days, only: [:edit, :create, :destory]
  	resources :owners, only: [:show, :edit, :update, :destory]
  	resources :bicycle_pictures, only: [:destory]
  	resources :lend_spots, only: [:destory]
  	resources :return_spots, only: [:destory]
  	resources :exhibition_spots, only: [:destory]
  	resources :bicycle_accessories, only: [:destory, :create]
  	resources :bicycles
  	get 'owners/withdrawal'
  end
  namespace :user do
  	resources :reviews, only: [:create, :destory]
  	resources :users, only: [:show, :edit, :update, :destory]
  	resources :messages, only: [:show, :create, :destory]
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
