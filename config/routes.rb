UglyindiansService::Application.routes.draw do
  root 'application#index'

  resources :spot_fix do
    post :spot_fix_signup
  end
end
