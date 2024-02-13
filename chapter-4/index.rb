### クラス定義

# 例

# class Foo 

#   def initialize(a)
#     @a = a
#   end 

#   def method1
#     @a 
#   end 

# end

# foo1 = Foo.new(1)
# foo2 = Foo.new(2) 

# p foo1.method1
# p foo2.method1

## クラスオブジェクトの操作

# a = Foo  # Fooの参照先を変数aに代入
# a.new(1) # Foo を扱うのと同じ
# Foo = 1  # 定数なので警告が出る

## class式の評価順序

# p 1

# class Hoge 
#   p 2
# end

# p 3

### 変数と定数

## ローカル変数とグローバル変数

# クラス定義中のローカル変数の参照
# v1 = 1

# class Qux1
#   p v1 #nameerror
# end

# メソッドでローカル変数の参照

# v1 = 1

# class Qux2 
#   v2 = 2

#   def method1; v1;end
#   def method2; v2;end

# end

# p Qux2.new.method1 #nameerror
# p Qux2.new.method2 #nameerror

# グローバル変数の参照

# $v1 = 1

# class Qux2 
#   $v2 = 2

#   def method1; $v1;end
#   def method2; $v2;end

# end

# p Qux2.new.method1
# p Qux2.new.method2

## インスタンス変数

# 4-51

# @v1 = 1

# class Qux3 
#   @v2 = 2
#   def method1; @v1; end 
#   def method2; @v2; end 
# end 

# p Qux3.new.method1 # nil
# p Qux3.new.method2 # nil

# 4-52

# class Qux4

#   def v3 # @v3に対する getter
#     return @v3
#   end

#   def v3=(value) # @v3に対する setter 
#     @v3 = value 
#   end 

#   def method1; @v3; end 

# end

# qux4 = Qux4.new 
# qux4.v3 = 3
# p qux4.v3
# p qux4.method1
