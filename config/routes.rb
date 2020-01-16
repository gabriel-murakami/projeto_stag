Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations", passwords: "passwords" }

  # Define as rotas do HomeController
  scope "/home" do
    get "/list", to: "home#list"
    get "/assistencias", to: "home#assistencias"
    get "/sinistro", to: "home#sinistro"
    get "/yousefriends", to: "home#yousefriends"
  end

  # Definie as rotas dos validadores em tempo real de email, cpf e cnpj
  devise_scope :user do
    post '/checkemail', to: 'registrations#emailcheck'
    post '/checkemailedit', to: 'registrations#emailcheckedit'
    post '/checkcpf', to: 'registrations#cpfcheck'
    post '/checkcnpj', to: 'registrations#cnpjcheck'
  end 

  root "home#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
