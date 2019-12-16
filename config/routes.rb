Rails.application.routes.draw do
  devise_for :users

  scope "/home" do
    get "/list", to: "home#list"
    get "/success", to: "home#sucesso"
  end

  root "home#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
