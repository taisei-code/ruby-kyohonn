# クラス


# 継承/オーバーライド

## 別名のメソッド定義
# class Job1 # スーパークラス
#   def myjob_job1
#     puts "私の仕事は教師です。"
#   end
# end 

# class Job2 < Job1 # サブクラス
#   def myjob 
#     puts "私の仕事はエンジニアです。"
#   end 
# end 

# job = Job2.new # Job2のインスタンス作成
# job.myjob_job1 # => 私の仕事は教師です。

## 同名のメソッド定義　
# class Job3 
#   def myjob
#     puts "私の仕事は教師です。"
#   end 
# end 

# class Job4 < Job3 
#    def myjob
#     puts "私の仕事はエンジニアです。"
#   end 
# end 

# job = Job4.new # Job4のインスタンス作成
# job.myjob # => 私の仕事はエンジニアです。

=begin

rubyでは、サブクラス（子クラス）がスーパークラス（親クラス）を継承している状態で異なる名前のメソッドを定義していれば、サブクラスのインスタンスに対してスーパークラスのメソッドを実行することができる。

同じメソッド定義
・継承していてもスーパークラスのメソッドは実行されず、サブクラスのメソッドが実行される

オーバーライド
・サブクラスの中でスーパークラスで定義されているメソッドと同じ名前のメソッドを定義できる。
「super」というメソッドを使うとスーパークラスで定義したメソッドが使える

=end

# オーバーライド不可の演算子

=begin 

= += ! not && and || or :? ::

・代入演算子、自己代入演算子（+=）
・論理演算子
・三項演算子
・：：

=end

# 特異メソッド

# class Movie 
#   def i_method 
#     p 'instance method'
#   end 
# end 

# # Movieクラスが作成された2つのインスタンス クラス内のインスタンスメソッドを使える
# obj1 = Movie.new
# obj2 = Movie.new

# # obj1のみで使える特異メソッド
# def obj1.s_method
#   p 'singlton method'
# end

# obj1.i_method # => "instance method"
# obj2.i_method # => "instance method"
# obj1.s_method # => "singlton method"
# obj2.s_method # => NoMethodError

=begin 

特異メソッドとは、１つのインスタンス固有のメソッド
定義方法：　def オブジェクト名.メソッド名

=end

# & と |

# %記法 （ %w ）

# p %w(dog cat) 
# # => ["dog", "cat"]
# p %w(#{dog} cat bird)
# # => ["\#{dog}", "cat", "bird"] 式展開されませんが、\で#がエスケープされます。

# p %i(dog cat bird)
# # => [:dog, :cat, :bird]
# p %i(#{dog} cat bird)
# # => [:"\#{dog}", :cat, :bird]

=begin 

小文字は式展開できない

wは配列
iはシンボル

=end