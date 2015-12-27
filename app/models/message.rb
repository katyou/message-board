class Message < ActiveRecord::Base
    #名前は必須入力かつ20文字以内
    validates :name , length: { maximum: 20 } , presence: true
    #内容は必須かつ２文字以上30文字以下
    validates :body , length: {minimum: 2, maximum: 30 } , presence: true
    #年齢は必須入力かつ０以下禁止
    validates :age , length: {minimum: 0 } , presence: true
    #数値のみ有効
    validates :age, numericality: {only_integer: true } 
    #０以上の時有効
    validates :age, numericality: {greater_than_or_equal_to: 0}
end
