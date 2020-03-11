class BlogsController < ApplicationController
  #アクション＝コントローラー内にあるメソッド
  #アクションが終了するとViewフォルダ内のblogs/index.html.erbを探そうとする。
  def index
  end
  def new
    @blog = Blog.new 
  end
end
