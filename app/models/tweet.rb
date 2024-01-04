class Tweet < ApplicationRecord
  
  def attributes
    {'text' => nil, 'image' => nil}
  end
 
  validates :text, presence: true
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション

  # バリデーションの後で「puts_sample」を実行
  after_validation :puts_sample

 # 「puts_sample」というcallbackを登録
  private
    def puts_sample
      puts 'sample'
    end
end
