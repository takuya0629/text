class Blog < ApplicationRecord
  def self.count_titleA
    blogs = Blog.where(title: 'タイトルA')
    blog.count
  end
end
