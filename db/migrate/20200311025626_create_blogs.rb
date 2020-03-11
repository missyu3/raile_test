class CreateBlogs < ActiveRecord::Migration[5.2]
#新しくマイグレーションファイルを作成したときは以下のコマンドを実行することで、DBに反映できる。
#rails db:migrate
  def change
    create_table :blogs do |t|
    #t.型：列名
    t.string :title
    t.text :content
    t.timestamps
    end
  end
end
