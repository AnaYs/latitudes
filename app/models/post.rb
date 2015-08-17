class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, :abstract, :content, presence: true
end
