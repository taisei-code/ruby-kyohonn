### 2/21

#1

=begin 
・マジックコメントの書き方
=end

#2

# x = 0 

# def hoge 
#   # x = 0
#   (1...5).each do |i|
#     x += 1 
#   end

#   puts x
# end 
# hoge
# p x # => 0


=begin 

メソッドの中と外で、変数名が同じでも別の扱いになる。
x += 1 自己代入演算子で1を代入しているが、メソッド内で変数xを代入してないからエラー
=end 

#3

# begin 
#   puts 1 + "2"
# rescue
#   puts "Error."
# rescue TypeError 
#   puts "Type Error."
# ensure
#   puts "Ensure"
# end 

=begin 

例外処理
rescue節

=end  

#4

# puts "90" # 90
# puts '90' # 90
# puts 0x90 # 144
# puts 090  # Invalid octal digit (SyntaxError)

=begin 

0x で始まる数値は16進数
0  で始まる数値は8進数
→ 8進数は格桁の最大値が7。（90はありえない）

=end

#7

# def foo(*a)
#   p a [1,2,3]
# end 

# foo(1,2,3)

=begin 

可変長引数
メソッドには、任意の引数を渡せる。

結果は配列に格納
=end 

#9
# class Hoge 
#   attr_reader :message
#   def initialize
#     @message = "Hello"
#   end
# end 

# class Piyo < Hoge 
#   def initialize # 実行される
#     @message = "Hi"
#     super # Hiを代入後のsuper スーパークラスのinitialize
#   end 
# end 
# puts Piyo.new.message # Piyoクラスのインスタンス化
# # => Hello


=begin 

rubyでは、サブクラス（子クラス）がスーパークラス（親クラス）を継承している状態で異なる名前のメソッドを定義していれば、サブクラスのインスタンスに対してスーパークラスのメソッドを実行することができる。

同じメソッド定義
・継承していてもスーパークラスのメソッドは実行されず、サブクラスのメソッドが実行される

オーバーライド
・サブクラスの中でスーパークラスで定義されているメソッドと同じ名前のメソッドを定義できる。
「super」というメソッドを使うとスーパークラスで定義したメソッドが使える

=end 

#10

# include Math 

# def area r 
#   return r * r * Math::PI 
# end 
# p area(1) # => 3.141592653589793

=begin 

円の面積を求めるコード

定数PIはMathモジュールに定義されてる。
2通り
・Mathモジュールをインクルード
・Math::PIと記述して、明示的にPIを宣言

=end

#12

s = "Hello"

def s.greet 
  puts "Hi!" #実行される
end 

class String 
  def greet 
    puts "Hello!"
  end 
end 

s.greet

=begin 

特異メソッド > クラス拡張して定義したメソッド

=end


#11
#11
#11
#11
#11
#11