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
    #Blog.create(title: params[:blog][:title], content: params[:blog][:content])
    
    #Strong Parametersで渡す。
    #Strong Parametersは送られてきたpermitの何を許可するかを指定します。
    #permitで指定されていない列は渡されないようになっている。
    Blog.create(params.require(:blog).permit(:title,:content))


    #リダイレクト：指定したWebページから自動的に別のWebページに転送されること
    #リダイレクトを行うときはURLではなく、Prefixで指定するのが一般的。
    #Prefixはルーティングを自動生成するときに作成されるURLの別名。
    #Prefixは”Rails routes”で確認できる。
    #redilect_toにPrefixを指定するときは”Prefix名_path”と記載することが必要。
    #Prefixに_pathとつけることで相対パスという意味になります。
    #_urlとつけると絶対パスという意味になります。
    redilect_to new_blog_path
  end

end
