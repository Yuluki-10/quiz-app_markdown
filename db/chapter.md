概要。Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

## 目次

1. [Adobe Premire Pro](#toc1)
2. [見出し2](#toc2)
3. [見出し3](#toc3)
4. [練習問題](#quiz)

## <a id="toc1"></a> 1. Adobe Premire Pro

テキストの装飾。**太字（\*\*囲う\*\*）**。*em強調（\*囲う\*）はこのようにハイライトにした*。***太字+ハイライト（\*\*\*囲う\*\*\*）***。

---

1. リスト=================================
2. リスト=================================
3. リスト=================================
4. リスト=================================

画像

<div class="main-content__link">
  <a href="" class="link-btn">デザインリンクボタン ▶︎ </a>
</div>

## <a id="toc2"></a> 2. 見出し2

### クォートブロック

> 文頭に>を置くことで引用（クオートブロック）になります。
> 複数行にまたがる場合、改行のたびにこの記号を置く必要があります。
> **引用の上下にはリストと同じく空行がないと正しく表示されません**
> 引用の中に別の Markdown を使用することも可能です。

### 動画埋め込み

<iframe width="560" height="315" src="https://www.youtube.com/embed/_QUNSiBu4PY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## <a id="toc3"></a> 見出し3

### コード

`puts 'hogehoge'`インラインコード

```ruby
class ChaptersController < ApplicationController
  before_action :authenticate_user!

  # GET) 「チャプター」作成ページ
  def new
    @training = Training.find(params[:training_id])
    @chapter = Chapter.new
  end
end
```

### コールアウトブロック（html で個別に実装していく）

<div class="main-content__callouts">
  <h4>コールアウト（ヒントとか）</h4>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
    dolore magna aliqua.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, <strong><em>sed do eiusmod tempor</em></strong>
    incididunt ut labore et dolore magna aliqua.</p>
</div>

### テーブル

| Left align | Right align | Center align |
| :--------- | ----------: | :----------: |
| This       |        This |     This     |
| column     |      column |    column    |
| will       |        will |     will     |
| be         |          be |      be      |
| left       |       right |    center    |
| aligned    |     aligned |   aligned    |

## <a id="quiz"></a> 練習問題