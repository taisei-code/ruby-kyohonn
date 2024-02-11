### 変数と定数のスコープ

## ローカル変数の振る舞い

foo = 1

def bar
  foo # メソッドから外部のローカル変数は参照できない
end

## グローバル変数の振る舞い

$foo = 1

def bar
  $foo # ブロックの外側のグローバル変数$fooを参照
end

p bar
