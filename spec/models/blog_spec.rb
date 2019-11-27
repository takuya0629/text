require 'rails_helper'

# RSpec.describe Blog, type: :model do
# end
RSpec.describe Blog, type: :model do
  it "counts titleA" do
    Blog.create(title: 'タイトルA', content: 'あいうえお')
    Blog.create(title: 'タイトルAA', content: 'かきくけこ')
    Blog.create(title: 'タイトル', content: 'さしすせそ')
    Blog.create(title: 'タイトルB', content: 'たちつてと')
    Blog.create(title: 'タイトルA', content: 'なにぬねの')
    expect(Blog.count_titleA).to eq 2
  end
  it "counts titleA When titleA does not exist " do
    Blog.create(title: 'タイトルC', content: 'あいうえお')
    Blog.create(title: 'タイトルAA', content: 'かきくけこ')
    Blog.create(title: 'タイトル', content: 'さしすせそ')
    Blog.create(title: 'タイトルB', content: 'たちつてと')
    Blog.create(title: 'タイトルC', content: 'なにぬねの')
    expect(Blog.count_titleA).to eq 0
  end
end