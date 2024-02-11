# 関数add ;で1行で定義した関数
def add(a,b); a + b; end

# クラスHoge
class Hoge
  def test # testメソッドの定義
    1
  end
end

hoge = Hoge.new # Hogeクラスのインスタンスを生成
hoge.test # Hogeクラスのtestメソッド実行