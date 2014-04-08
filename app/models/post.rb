class Post < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => true
  validates :link, :presence => true, :uniqueness => true


  belongs_to :user
  has_many :comments, :as => :commentable
  has_many :votes

  # def posts_in_order

  # end
end
