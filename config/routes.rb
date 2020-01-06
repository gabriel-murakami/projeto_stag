Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations", passwords: "passwords" }

  scope "/home" do
    get "/list", to: "home#list"
  end

  get "/home/sucesso"

  get "/home/sucesso_senha"

  root "home#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
