Rails.application.routes.draw do

  namespace :admin do
    get 'quizzes/index'
  end

  namespace :admin do
    get 'past_questions/index'
  end

  namespace :admin do
    root to: 'home#index'

    resources :home, only: :index

    devise_for :admin_users,
               path: :users,
               only: :sessions,
               controllers: { sessions: 'admin/admin_users/sessions' }
  end

  namespace :web, path: '/' do
    root to: 'home#index'
    resources :certifications, only: [:index, :show]
  end

  #mount API::Base => '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
