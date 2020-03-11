Rails.application.routes.draw do
  # HTTPメソッド　'URL', to:'コントローラ名#メソッド名'
  get '/blogs', to:'blogs#index'
  get '/stocks', to:'stocks#index'
end
