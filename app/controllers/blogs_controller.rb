class BlogsController < ApplicationController

  before_action :set_blog, only: [:show, :edit, :update,:destroy]
  #アクション＝コントローラー内にあるメソッド
  #アクションが終了するとViewフォルダ内のblogs/index.html.erbを探そうとする。
  def index
  end
  def new
    @blog = Blog.new 
  end

  def index
    @blogs = Blog.all
  end

  def confirm
    @blog = Blog.new(blog_params)
    render :new if @blog.invalid?
  end
  
  def create
    #paramsメソッドを使用することで、引数を取得できる。
    #送られてきた引数は{"blog"=>{"title"=>"hoge", "content"=>"fuga"}}配列の中に配列が入っているため、下記のように取り出している。
    #Blog.create(title: params[:blog][:title], content: params[:blog][:content])
    
    #Strong Parametersで渡す。
    #Strong Parametersは送られてきたpermitの何を許可するかを指定します。
    #permitで指定されていない列は渡されないようになっている。
    #Blog.create(blog_params)

      @blog = Blog.new(blog_params)
      if @blog.save 
        redirect_to blogs_path, notice:"ブログを作成しました！"
      else
        render:new
      end

    #リダイレクト：指定したWebページから自動的に別のWebページに転送されること
    #リダイレクトを行うときはURLではなく、Prefixで指定するのが一般的。
    #Prefixはルーティングを自動生成するときに作成されるURLの別名。
    #Prefixは”Rails routes”で確認できる。
    #redirect_toにPrefixを指定するときは”Prefix名_path”と記載することが必要。
    #Prefixに_pathとつけることで相対パスという意味になります。
    #_urlとつけると絶対パスという意味になります。
    #redirect_to new_blog_path
  end

  def edit
  
  end

  def update 
  
    if  @blog.update(blog_params)
      redirect_to blogs_path,notice: "ブログを編集しました。"
    else
      render :edit 
    end

  end 

  def destroy
    if @blog.destroy
      redirect_to blogs_path,notice:"ブログを削除しました。"
    else
      render:edit
    end
  end


  def show
    
  end

private 

  def blog_params
    return params.require(:blog).permit(:title,:content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end