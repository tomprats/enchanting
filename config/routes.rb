Enchanting::Application.routes.draw do
  root "pages#home"

  resources :pages, path: "" do
    collection do
      get "home"
    end
  end
end
