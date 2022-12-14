# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  3.times do |n|
    User.create!(
      name: "user#{n + 1}",
      email: "#{n + 1}@mail.com",
      password: "userpass#{n + 1}"
    )
  end
  Training.create!(
    [
      {
        title: "初めての動画制作",
        overview: "概要。サンプルテキストサンプルテキストサンプルテキストサンプルテキストサンプルテキスト。"
      },
      {
        title: "初めての在宅ワーク",
        overview: "概要。サンプルテキストサンプルテキストサンプルテキストサンプルテキストサンプルテキスト。"
      },
      {
        title: "ライティングの基礎",
        overview: "概要。サンプルテキストサンプルテキストサンプルテキストサンプルテキストサンプルテキスト。"
      },
      {
        title: "デザインの基礎からバナー制作まで",
        overview: "概要。サンプルテキストサンプルテキストサンプルテキストサンプルテキストサンプルテキスト。"
      }
    ]
  )
  chapter_titles = ["COMOLYで請け負った動画の種類", "動画編集で必要なPCスペック", "動画編集ソフトの紹介", "動画編集の基本的なやり方", "実践ワークショップ", "まとめ"]
  chapter_titles.each_with_index do |c, i|
    Chapter.create!(
      training_id: Training.first.id,
      chapter_title: c,
      chapter_num: i + 1,
      content: '
概要。Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

## 目次

## 1. Adobe Premire Pro
1. <a href="">Adobe Premire Pro</a>
2. poipoi poipoi poipoi
3. poipoi poipoi poipoi
4. poipoi poipoi poipoi
5. 練習問題

## 2. poipoi poipoi poipoi
テキストの装飾。==ハイライト==, **ボールド（太字）**, *em強調（斜体）* , ~~打ち消し~~,==ハイライト==, _下線_, 

----

1. リスト=================================
2. リスト=================================
3. リスト=================================
4. リスト=================================

画像

<a href="" class="link__btn">公式サイトへ ▶︎ </a>

## 見出し2
### クォートブロック

> 文頭に>を置くことで引用（クオートブロック）になります。
> 複数行にまたがる場合、改行のたびにこの記号を置く必要があります。
> **引用の上下にはリストと同じく空行がないと正しく表示されません**
> 引用の中に別のMarkdownを使用することも可能です。

### 動画埋め込み

<iframe width="560" height="315" src="https://www.youtube.com/embed/FwCqxHGfHAk" frameborder="0" allowfullscreen></iframe>

### コード

`puts "hogehoge"`インラインコード

```ruby
puts "The best way to log and share programmers knowledge."
```

### コールアウトブロック（htmlで個別に実装していく）

<div class="callouts">
  <h4>ヒント</h4>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
</div>

### テーブル

| Left align | Right align | Center align |
|:-----------|------------:|:------------:|
| This       | This        | This         |
| column     | column      | column       |
| will       | will        | will         |
| be         | be          | be           |
| left       | right       | center       |
| aligned    | aligned     | aligned      |
'
    )
  end
end