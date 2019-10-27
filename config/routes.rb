Rails.application.routes.draw do
  resources :events
  devise_for :owners, controllers: { registrations: 'registrations' }
  devise_for :admins
  devise_for :users, controllers: { registrations: 'registrations' }

  namespace :admin do
    resources :new_owners, only: [:index, :edit, :update, :destroy]
    resources :new_users, only: [:index, :edit, :update, :destroy]
    resources :new_bicycle, only: [:index, :edit, :update, :destroy]
    resources :owners, only: [:index, :show, :destroy]
    resources :users, only: [:index, :show, :destroy]
    resources :bicycles, only: [:show, :destroy]
    resources :contracts, only: [:index, :show]
    resources :massages, only: [:show, :destroy]
    resources :rooms, only: [:index]
    resources :inquiries, only: [:index]
  	resources :replies, only: [:new, :create]
  end
  namespace :owner do
    resources :owners, only: [:show, :edit, :update, :destroy]
  	resources :messages, only: [:show, :create, :destroy]
    resources :payees, only: [:edit, :update]
    resources :bicycles
    resources :bicycle_pictures, only: [:update, :destroy]
    resources :bicycle_accessories, only: [:destroy, :create]
    resources :exhibition_spots, only: [:destroy]
    resources :lend_spots, only: [:destroy]
    resources :return_spots, only: [:destroy]
    resources :lend_days, only: [:edit, :update, :destroy]
    resources :contracts, only: [:index, :show]
  	resources :rooms, only: [:index]
    resources :contracts do
      member do
        get 'bicycle'
      end
    end

  	get 'withdrawal'
  end
  namespace :user do
    resources :users, only: [:show, :edit, :update, :destroy]
  	resources :reviews, only: [:create, :destroy]
    resources :contracts, only: [:index, :show, :new, :create]
    resources :rooms, only: [:index, :create]
  	resources :messages, only: [:show, :create, :destroy]
    resources :contracts do
      collection do
        post 'confirm'
      end
    end
    get 'withdrawal'
  end
	resources :inquiries, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'root#about'
  get 'top'   => 'root#top'
  get 'city'  => 'root#city'
  get 'wait'  => 'root#wait'
  get 'unsubscribe' => 'root#unsubscribe'
  get 'admin_menu'    => 'root#admin_menu'
  get 'bicycle_index' => 'root#bicycle_index'
end
