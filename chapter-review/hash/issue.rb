# 1

# h = {a: 100}
# h.each { |p|
#   p p.class # Array
# }

=begin 

Hash#eachのブロックパラメーターを classで返す

=end

# 2

# p ({a:100, b:100}).invert # {100=>:b}

=begin 

Hash#invert
入れ替えの結果キーが重複した場合は、後に定義された方が優先されます。

=end

# 3

# h = {a: 100, b: 200}
# h.delete(:a)
# p h # {:b=>200}

=begin 

Hash#delete(:key)はレシーバーからkeyの項目を削除します。
このメソッドは破壊的メソッドです。

=end

# 4

# h = Hash[]
# p h # {}

# h = Hash()
# p h # Error

# user = {id: 1, name: "Yamada"}
# p user 
# # {:id=>1, :name=>"Yamada"} 
# p user.fetch(:name)
# # "Yamada"
# p user.fetch(:email)
# # KeyError 

# 5

h = {a: 100, b: 200}
p h.invert # {100=>:a, 200=>:b}