Rails.application.routes.draw do
  get '/' => 'home#index'
  post '/clock' => 'home#clock'
end
