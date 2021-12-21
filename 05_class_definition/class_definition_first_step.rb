# class_evalを使ってみる

# 1. ExClassクラスのオブジェクトが2つあります。これらをJudgement.callに渡しています。
#    Judement.callはテスト側で定義するので実装は不要です。この状況でe2オブジェクト"だけ"helloメソッドを
#    使えるようにしてください。

class ExClass
end

e1 = ExClass.new
e2 = ExClass.new

def e2.hello
end

Judgement.call(e1, e2)

# 2. ExClassを継承した無名クラスを作成してください。
#    その無名クラスを Judgement2.call の引数として渡してください(Judgement2.callはテスト側で定義するので実装は不要です)

# 3. 下のMetaClassに対し、次のように`meta_`というプレフィックスが属性名に自動でつき、ゲッターの戻り値の文字列にも'meta 'が自動でつく
#    attr_accessor、meta_attr_accessorを作ってください。セッターに文字列以外の引数がくることは考えないとします。
#
#    使用例:
#
#    class MetaClass
#      # meta_attr_accessor自体の定義は省略
#      meta_attr_accessor :hello
#    end
#    meta = MetaClass.new
#    meta.meta_hello = 'world'
#    meta.meta_hello #=> 'meta world'

class MetaClass
end

# 4. 次のようなExConfigクラスを作成してください。ただし、グローバル変数、クラス変数は使わないものとします。
#    使用例:
#    ExConfig.config = 'hello'
#    ExConfig.config #=> 'hello'
#    ex = ExConfig.new
#    ex.config #=> 'hello'
#    ex.config = 'world'
#    ExConfig.config #=> 'world'

# 5.
# ExOver#helloというメソッドが定義されています。ExOver#helloメソッドを実行したとき、
# helloメソッドの前にExOver#before、helloメソッドの後にExOver#afterを実行させるようにしましょう。
# ExOver#hello, ExOver#before, ExOver#afterの実装自体ははそれぞれテスト側で定義しているので実装不要(変更不可)です。
#
