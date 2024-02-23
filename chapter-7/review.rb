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

begin 
  puts 1 + "2"
rescue
  puts "Error."
rescue TypeError 
  puts "Type Error."
ensure
  puts "Ensure"
end 

=begin 

例外処理
rescue節

=end  

#4


#5


#6


#7


#8


#9


#10