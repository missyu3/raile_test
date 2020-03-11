class BlogsController < ApplicationController
  #アクション＝コントローラー内にあるメソッド
  #アクションが終了するとViewフォルダ内のblogs/index.html.erbを探そうとする。
  def index
  end
  def new
    @blog = Blog.new 
  end

  def create
    #paramsメソッドを使用することで、引数を取得できる。
    #送られてきた引数は{"blog"=>{"title"=>"hoge", "content"=>"fuga"}}配列の中に配列が入っているため、下記のように取り出している。
    Blog.create(title: params[:blog][:title], content: params[:blog][:content])
  end

end
