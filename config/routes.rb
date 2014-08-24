Enchanting::Application.routes.draw do
  root "pages#home"

  resources :pages, path: "" do
    collection do
      get "home"
      get "about"
      get "event"
      get "contact"
      get "past"
    end
  end
end
