class Post < ActiveRecord::Base


validates_presence_of :post
validates :post, length: { minimum: 10 }
validates_presence_of :user_id
validates_presence_of :summary

belongs_to :user
has_many :comments, :as => :commentable

before_save :convertin_post_as_summary

	def convertin_post_as_summary
		self.summary=post[0..9]
	end

end
