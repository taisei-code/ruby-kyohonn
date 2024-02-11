### 関数とクラス

## 関数の定義
def add(a,b)
  a + b
end

print add(1,2)

## 「 ; 」で関数を1行で定義
def add(a,b); a + b; end

## クラスの定義
class Hoge
  def test
  end
end

hoge = Hoge.new # Hogeクラスのインスタンス生成
hoge.test # Hogeクラスのtestメソッド実行