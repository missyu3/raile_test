Rails.application.routes.draw do
  get 'stocks/index'
  get '/blogs', to:'blogs#index'

end
