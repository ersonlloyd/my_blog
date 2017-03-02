class Article < ApplicationRecord

  belongs_to :user
  has_many :comments

  def article_urls
  	
  end

end
