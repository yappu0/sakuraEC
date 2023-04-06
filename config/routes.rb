Rails.application.routes.draw do
  devise_for :administrators, only: [:sign_in, :sign_out, :session],
             controllers: { sessions: 'admins/sessions' }

  namespace :admins do
    resources :foods
    root 'foods#index'
  end
end
