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

# s = "Hello"

# def s.greet 
#   puts "Hi!" #実行される
# end 

# class String 
#   def greet 
#     puts "Hello!"
#   end 
# end 

# s.greet

=begin 

特異メソッド > クラス拡張して定義したメソッド

=end


#14

# a = [1,2,3,4]
# b = [1,3,5,7]

# # c = a | b # 123457 重複を取り除いて、総和
# # c = a & b # 1 3 両辺に共通の値を返す
# c.each {|i| print i, " "} 

# 15 

# a = [1,2,3,4]
# a[0..-2].each do |i| print i, " " end # => 1 2 3

# b = [1,2,3,4]
# b[0,3].each do |i| print i, " " end # => 1 2 3

#17

# a1 = %w(a b)
# p a1 # => ["a", "b"]
# a2 = %w(x y)
# p a2 # => ["x", "y"]
# a3 = a1.zip(a2)
# p a3 # => [["a", "x"], ["b", "y"]]

# p a3.first
# # => ["a", "x"]

#19 

# a = "abc"
# b = "abc"

# print a.eql? b 
# print a.equal? b 
# print a == b

#20

# puts 5 + "Hello"
# TypeError

# puts "Hello" + 5
# TypeError

# puts "Hello" * 5
# HelloHelloHelloHelloHello

# puts 5 * "Hello"
# TypeError 

#21

# s = <<"EOB"
# Hello,
# Ruby 
# World.
# EOB 
# "EOB"
# p s

=begin 

ヒアドキュメント

=end

#22

# s1 = "Hoge"
# s2 = "Fuga"
# p s1.concat(s2) # "HogeFuga"
# p s1.chop  # "HogeFug"
# p s1.chomp # "HogeFuga"
# p s1 # "HogeFuga"
# p s2 # "Fuga"
# p s1 + s2 # "HogeFugaFuga"
# p s1 # "HogeFuga"

=begin 

concatは破壊的メソッド → selfを変更
chop, chomp, + は非破壊メソッド

=end 

# 24 

# member = [10, "Tanaka"]
# p "ID:%2d Name:%s" % member

=begin 

[ 文字列パターン % 配列]
→ 配列の要素を文字列パターンの %d %s などに埋め込む

=end 

# 27 

# h1 = {a: 1, b: 2, c: 3} 
# p h1 # {:a=>1, :b=>2, :c=>3}

# h2 = Hash[:a, 1, :b, 2, :c, 3]
# p h2 # {:a=>1, :b=>2, :c=>3

# h3 = {a = 1, b = 2, c = 3}
# p h3 # SyntaxError

# h4 = {:a 1, :b 2, c: 3}
# p h4 # SyntaxError

# 28 

# 30