# ハッシュ

## ハッシュリテラル

# a = {"foo1" => 1, "foo2" => 2, "foo3" => 3}
# p a["foo1"] # 1

## 存在しないキーの指定

# a = {}
# p a[:foo1] # nil

## キーにシンボル

# a = {:foo1 => 1, :foo2 => 2, :foo3 => 3}
# p a[:foo1] # 1

### Ruby1.9から追加された書き方

# a = {foo1: 1, foo2: 2, foo3: 3}
# p a[:foo1] # 1

## ハッシュにデフォルト値の指定

# a = Hash.new(5)
# p a[:foo1] # 5

## [] によるハッシュの生成

### Hashのクラスメソッド [] から生成

# a = Hash[:foo1, 1, :foo2, 2, :foo3, 3]
# p a # {:foo1=>1, :foo2=>2, :foo3=>3}

# ### Array#to_hから生成

# a = [[:foo1, 1],[:foo2, 2],[:foo3, 3]].to_h 
# p a # {:foo1=>1, :foo2=>2, :foo3=>3}

# ハッシュ引数

## 波カッコを省略

# def foo a, b, c
#   p c # {:foo1=>1, :foo2=>2}
# end 
# foo(1,2, :foo1=>1, :foo2=>2)