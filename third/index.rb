### 変数と定数のスコープ

## ローカル変数の振る舞い

# foo = 1

# def bar
#   foo # メソッドから外部のローカル変数は参照できない
# end

## グローバル変数の振る舞い

# $foo = 1

# def bar
#   $foo # ブロックの外側のグローバル変数$fooを参照
# end
# bar

### 数値リテラル

3.0e2 #300.0 （3.0に10の2乗を乗算）

## UFO演算子

100 <=> 10  # 左辺が大きいから,1
100 <=> 100 # 等しいから,0
10  <=> 100 # 左辺が小さいから,-1

## 自己代入演算子

a = 100

a += 1 #101
a -= 1 #100
a *= 2 #200
a = a ** 2 # 200 ** 2 = 40000

## 数値クラス

1.class # Integer
1.2.class # Float

1.class.superclass # Numeric
1.2.class.superclass # Numeric

### メソッド

## メソッドの定義

# def foo a,b
#   a + b
# end

# foo(1,2) 
# foo 2,3 # 引数はカッコを省略してOK

## 引数のデフォルト値

# def foo(a, b=100)
#   a + b
# end
# p foo # ArgumentError

## キーワード引数

# def foo(a:, b: 100)
#   a + b 
# end

# foo(a: 2, b: 3)
# foo(a: 1)

## キーワード引数に任意の引数を使う

# def bar(a:, b: 100, **z)
#   p z
#   a + b
# end
# bar(a: 2, c:100, d:200)

### 論理値（難しい）

## 論理演算子

### 文字列リテラルと式展開

## 文字列リテラル

a = "abcd"
p a
p a.class
b = "ab"'cd'
p b

## 式展開