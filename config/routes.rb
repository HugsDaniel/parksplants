Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :gardens do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: [:destroy] do
    member do
      patch :water
    end
  end

  # patch "/plants/:id/water", to: "plants#water"
end
