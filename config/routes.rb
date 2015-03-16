Enchanting::Application.routes.draw do
  root "pages#home"

  get :/, to: "pages#home", as: :home
  get :gals, to: "pages#gals"
  get :services, to: "pages#services"
  get :contact, to: "pages#contact"

  post :contact_email, to: "emails#contact"
end
