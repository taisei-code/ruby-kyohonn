# 問題1

# 問題2

# x = 0

# def hoge 

#   (1...5).each do |i|
#     x += 1
#   end

#   puts x # NoMethodError

# end 

# hoge 

=begin
メソッドの内と外では、変数名が同じでも別の変数
=end

# 問題3

# 問題4

# puts "90"
# puts '90'
# puts 0x90 # 144
# puts 090  # Error

=begin

文字列リテラルは、「 " 」 「 '」 

0xで始まる数値は16進数
0で始まる数値は8進数（最大値は7）

=end

# 問題5

# x = 10
# y = x < 10 ? "A":"B"
# puts y

# 問題6

# MAX = 10
# print MAX 

# MAX = 100
# print MAX

=begin

定数・・・アルファベットの大文字で始まる
警告が出るが、変更可能

=end

# 問題7

# def foo(*a)
#   p a # [1,2,3]
# end 

# foo(1,2,3)

=begin 

メソッドの引数に*をつけると、可変長引数になる

任意の個数の引数を渡す → 結果は配列

=end

# 問題8

# 問題9

# class Hoge 
#   attr_reader :message

#   def initialize
#     @message = "Hello"
#   end

# end

# クラスの継承
# class Piyo < Hoge 

#   def initialize
#     @message = "Hi"
#     super # スーパークラスのinitializeを呼ぶ
#   end

# end

# puts Piyo.new.message

=begin 

class Piyo はインスタンス化される。
@messageの最終的な値は、"Hello"

=end

# 問題10

# include Math

# def area r
#   return r * r * PI 
# end

# 問題11

=begin

オーバーライド不可の演算子

..
&&

=end

# 問題12

# s = "Hello"

# def s.greet # 特異メソッド
#   puts "Hi"
# end

# class String # クラスを拡張したメソッド
#   def greet
#     puts "Hello"
#   end
# end

# s.greet # Hi

# 問題13

# class Employee
#   attr_reader :id 
#   attr_accessor :name 

#   def initialize id, name
#     @id = id
#     @name = name 
#   end 

#   def to_s
#     return "#{@id}:#{@name}"
#   end

#   def <=> other
#     return self.id <=> other.id 
#   end

# end

# employees = []
# employees << Employee.new("3", "Tanaka")
# employees << Employee.new("1", "Suzuki")
# employees << Employee.new("2", "Saito")

# employees.sort!
# employees.each do |employee| puts employee end

=begin 
配列をsortするには、配列の要素クラスで演算子<=>を定義
=end

# 問題14

# a = [1,2,3,4]
# b = [1,3,5,7]
# c = a & b 

# # p c # [1, 3]
# c.each { |i| print i, ""}

=begin  
配列の積集合は&
=end

# 問題15

# a = [1,2,3,4]
# a[0..-2].each do |i| print i, "" end
# a[0,3].each do |i| print i, "" end

=begin

配列の負の添字は、「 最後の要素から順番に要素を指定する　」
最後の要素は -1

a[0,3] は0番目から3個の要素を参照

=end

# 問題16

# 問題17

a1 = %w(a b)    # ["a", "b"]
a2 = %w(x y)    # ["x", "y"]
a3 = a1.zip(a2) # [["a", "x"], ["b", "y"]]
p a3.first      # ["a", "x"]

=begin 

zipメソッド → 配列の要素を引数の配列の各要素と組み合わせて、配列の配列を生成する

=end