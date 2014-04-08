class Comment < ActiveRecord::Base
  validates :message, :presence => true

  belongs_to :user
  belongs_to :post
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable
end

