Rails.application.routes.draw do

  # Index Route
  root :to => 'website/pages#index'

  # Engine Routes
  mount Phcpress::Engine => "/"

end
