class Relationship < ApplicationRecord
    belongs_to :follower,class_name: "User"
    # follower_idに格納されている値と同じuser_idを参照しにいきたいのでユーザテーブルを定義
    
    belongs_to :followed,class_name: "User"
end
