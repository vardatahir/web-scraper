Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  resources :pages do
    resource :check, only: [:create]
  end

  # Defines the root path route ("/")
  root "pages#index"
end
