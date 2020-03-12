Rails.application.routes.draw do

  resources :blogs do
    collection do
      post :confirm
    end
  end

#resourcesメソッドを使用することでRESTfulで頻出の命令文を自動的に記述してくれる。
#resources :blogs
  #blogs     GET      /blogs(.:format)            blogs#index　   一覧
  #          POST     /blogs(.:format)            blogs#create　  登録
  #new_blog  GET      /blogs/new(.:format)        blogs#new       作成
  #edit_blog GET      /blogs/:id/edit(.:format)   blogs#edit      編集
  #blog      GET      /blogs/:id(.:format)        blogs#show      詳細
  #          PATCH    /blogs/:id(.:format)        blogs#update    更新
  #          PUT      /blogs/:id(.:format)        blogs#update    更新
  #          DELETE   /blogs/:id(.:format)        blogs#destroy   消去

  #index   一覧（一覧画面を表示する）
  #create  登録（送られてきた値を登録する）
  #new     作成（作成画面を表示する）
  #edit    編集（編集画面を表示する）
  #show    詳細（詳細画面を表示する）
  #update  更新（送られてきた値を更新する）
  #destroy 消去（送られてきた値を削除する）


# HTTPメソッド　'URL', to:'コントローラ名#メソッド名'
  #get '/blogs', to:'blogs#index'
  #get '/stocks', to:'stocks#index'
end
