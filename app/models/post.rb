class Post < ActiveRecord::Base

validates_presence_of :post
validates :post, length: { minimum: 10 }
validates_presence_of :user_id
validates_presence_of :summary


end
