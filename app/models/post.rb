class Post < ActiveRecord::Base
  validates :title, :abstract, :content, presence: true
end
