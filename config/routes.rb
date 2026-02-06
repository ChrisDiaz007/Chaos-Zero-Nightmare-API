Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'api/v1/sessions',
    registrations: 'api/v1/registrations'
  }

  namespace :api, defaults: { format: :json} do
    namespace :v1 do

      resources :characters do
        resources :overviews, except: [:show]
        resources :strengths, except: [:show]
        resources :weaknesses, except: [:show]
      end

      resources :partners

    end
  end
end
