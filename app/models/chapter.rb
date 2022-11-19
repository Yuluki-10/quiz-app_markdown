class Chapter < ApplicationRecord
  validates :chapter_title, presence: true
  validates :chapter_num, presence: true
  belongs_to :training
  has_many :questions, dependent: :destroy
  
  # 問題文をAction Textで扱えるようにする
  # has_rich_text :content（2022/11/19：markdownに再切り替えのためコメントアウト）
end
