# models/post.rb
class Post < ActiveRecord::Base
  attr_accessible :body, :title, :topic
  has_many :comments
  belongs_to :user
  belongs_to :topic

  default_scope order('created_at DESC')
end

# models/topic.rb
class Topic < ActiveRecord::Base
  attr_accessible :description, :name, :public
  has_many :posts
end