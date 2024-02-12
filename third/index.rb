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

# a = "abcd"
# p a
# p a.class
# b = "ab"'cd'
# p b

## 式展開

# a = 1
# p "a is #{a}"
# p 'a is #{a}'

## 文字列から数値に変換

# p "100".to_i
# p "1.9".to_f
# p "5/2".to_r # (5/2)

### パーセント記法

# a = %*test*
# p a

## パーセント記法に対となった記号を適用

# a = %[test] # 囲む記号に[]を使用
# p a

### 文字列演算

## 文字列の算術演算子

# p a = "ru" + "by"
# p a * 3
# p 3 * a

## << メソッドによる連結

# a = "ru"
# p a << "by"

## 文字列の比較

# p "a" < "b"
# p "ab" < "ac"
# p "Ab" < "Ab"
# p "Ab" == "Ab"
# p "Ab" <=> "Ab"

### シンボルリテラル

## シンボルの記述例

# p foo1 = :"foo1"
# p foo2 = :"#{foo1}foo2"

## パーセント記法でシンボルの指定

# p %s?foo1? # :foo1
# p %s[foo2] # :foo2

## 文字列とシンボルの変換

# p v1 = "foo1" # "foo1" 
# p v2 = v1.to_sym # :foo1
# p v3 = v2.to_s # "foo1"

### オブジェクトの同値性と同一性

## 文字列とシンボルの違い

# p "foo1".object_id
# p "foo1".object_id # オブジェクトIDは毎回違う

# p :foo1.object_id
# p :foo1.object_id # オブジェクトIDは毎回同一

## オブジェクトの同値性と同一性の判定

# p "foo1" == "foo1"
# p "foo1".equal?"foo1"

# p :foo1 == :foo1
# p :foo1.equal? :foo1

### 変数と値

## 自己代入におけるオブジェクトの参照先

# v1 = "foo1"
# v2 = v1
# v1 += "foo2"

# p v1
# p v2

## 引数の参照先

# def func v1
#   v1.object_id
# end

# v1 = "foo1"
# p v1.object_id #60

# p func(v1) #60

## メソッドの内部で自己代入

# def func v1
#   v1 += "foo2"
# end

# v1 = "foo1"
# p func v1 
# p v1

## 破壊的メソッドの例

# v1 = "foo1"
# v2 = v1 # v1とv2は同じ文字列を参照

# p v1.chop # "foo"
# p v2 # "foo1"

# p v1.chop! # "foo"
# p v2 # "foo"

## 文字列とシンボルの違い

# v1 = "foo"
# v2 = "foo"
# v3 = "foo"

# v1, v2, v3はそれぞれ別のオブジェクト

# p v1.object_id #60
# p v2.object_id #80
# p v3.object_id #100

# v1, v2, v3は同じオブジェクト

# v1 = :foo
# v2 = :foo
# v3 = :foo

# p v1.object_id #1226908
# p v2.object_id #1226908
# p v3.object_id #1226908

### 配列リテラル

# a = []
# b = [10, true, "30"]
# p b[0]

## 二次元配列

# a = [[1, 2], [3, 4]]
# p a[0][0] #1
# p a[1][1] #4

## パーセント記法で配列を生成

# v1 = %w(hoge foo bar)
# p v1 # ["hoge", "foo", "bar"]
# p v1.join() # "hogefoobar"
# p v1.join("_") #"hoge_foo_bar"

## インスタンスの生成による配列の生成

# a = Array.new(5) # [nil, nil, nil, nil, nil]
# p a
# p a.length

## 要素の初期値の指定

# a = Array.new(2, "a")
# p a # ["a", "a"]

# a[0].replace("banana") # a[0]だけでなく、a[1]もrelaceされる
# p a

# ブロックで初期値を指定で回避 

# a = Array.new(2){"a"} 
# p a # ["a", "a"]

# a[0].replace("banana")
# p a # ["banana", "a"]

## 要素数を指定した要素の参照

# a = [0, 1, 2, 3, 4, 5]
# p a[2, 3] # [2, 3, 4]

## 要素数を指定した代入

# a = [0, 1, 2, 3]
# a[1,2] = "a"
# p a # [0, "a", 3]

## 要素数を指定して配列を代入

# a       = [0, 1, 2, 3]
# a[1, 2] = ["a", "b"]
# p a # [0, "a", "b", 3]

## 要素数を指定して複数の式を代入

# a       = [0, 1, 2, 3]
# a[1, 2] = "a", "b"
# p a # [0, "a", "b", 3]

## 指定数以上の個数の値を代入

# a = [0, 1, 2, 3]
# a[1, 2] = "a", "b", "c"
# p a

### 多重代入と可変長引数

## 多重代入（複数の変数を1度に代入する）

# a, b, c = 1, 2, 3
# p a
# p b
# p c

## 配列による多重代入

# a, b, c = [1, 2, 3]
# (a, b), c = [1, 2], 3

##　値の個数が足りない場合

# a, b, c = 1, 2
# p a
# p b
# p c # nil

## 値の個数が多い場合

# a, b = 1, 2, 3

## 1つの変数に複数の値を代入

# a = 1, 2
# p a # [1,2] 配列の代入

## 最後の変数に配列で代入

# a, *b = 1, 2, 3
# p a
# p b # [2,3]

## 可変長引数

# def foo a, *b
#   b
# end

# p foo(1,2,3)

### 配列の演算

## &演算子 |演算子

# a = [1, 1, 2, 2]
# b = [2, 2, 3, 3]

# p a & b # [2]
# p a | b # [1, 2, 3]

## + 演算子と- 演算子

# a = [1, 1, 2, 2]
# b = [2, 2, 3, 4]

# p a + b
# p a - b # [1,1]

## 対象が重複している場合の - 演算子の動作

# a = [1, 1, 2, 2]
# c = [1]
# p a - c

### for式

## for式

# a = [2, 3, 4]
# for i in a do
#   p i
# end

## 識別子を複数指定

# for i,j in [[1,2], [3,4]]
#   p i + j 
# end

## for式とスコープ

# for i in [2,3,4]
#   bar = 1
# end

# p bar

## eachメソッドとスコープ

# [2,3,4].each do
#   bar = 1
# end

# p bar

### ハッシュリテラル

# a = {"foo1" => 1, "foo2" => 2, "foo3" => 3}
# a["foo1"]
# a["foo2"] = 20
# p a # {"foo1"=>1, "foo2"=>20, "foo3"=>3}

## 存在しないキーの指定

# b = {}
# p b[:foo1] #nil

## キーにシンボルを用いたハッシュ

# a = {:foo1 => 1, :foo2 => 2, :foo3 => 3}
# p a

# a = {foo1: 1, foo2: 2, foo3: 3}
# p a[:foo1]

# a = Hash.new(5)
# p a[:foo1]

## []によるハッシュの生成

# Hashのクラスメソッド[]から生成

# a = Hash[:foo1, 1, :foo2, 2, :foo3, 3]
# p a # {:foo1=>1, :foo2=>2, :foo3=>3}

# b = [[:foo1, 1], [:foo2, 2], [:foo3, 3]].to_h
# p b # {:foo1=>1, :foo2=>2, :foo3=>3}

## ハッシュ引数

# def foo a, b, c
#   p c # {:foo1=>1, :foo2=>2}
# end

## 波カッコを省略しない
# foo(1, 2, {:foo1=>1, :foo2=>2})
## 波カッコを省略する
# foo(1, 2, :foo1=>1, :foo2=>2)

### 範囲リテラル

## include? 

# p (1..5).include?(3)
# p (1..5).include?(6)
# p (1..5)== 3
# p (1..5)=== 3
# p (1..5)=== 9

## for式に範囲オブジェクト適用

# for i in "a".."z"
#   p i
# end

## 配列の添字演算子に範囲オブジェクト

# a = ["a", "b", "c", "d", "e"]

# p a[2,3]
# p a[2..3]
# p a[2...3]

## 文字列の添字演算子に範囲オブジェクト

# a = "abcdef"

# p a[1]
# p a[1..2]
# p a[1...2]

### case式

# case 1
# when 1 then
#   p 1
# end

# case "abc"
# when "abc"
#   p 1
# when "abc"
#   p 2
# end

# a = 10
# b = case a

# when 1 then 
#   1
# else
#   2
# end 

# p b

## 複数の条件式

# case 3
# when 1,2 then; p 1
# when 3,4 then; p 2 # これが実行
# else p 3
# end

## 条件式に範囲を指定

# case 7
# when 1...5 then; p 1
# when 5..10 then; p 2
# end

## whileとuntil

## while

# i = 0
# while(0..4) === i do # iが0から4のとき
#   p i
#   i += 1
# end 

## until

# i = 0
# until i == 5 do
#   p i
#   i += 1
# end
