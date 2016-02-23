require 'rails_helper'


describe Post do
	it "is valid with a title and content" do
	post = Post.new(title: 'title', content: 'content')
	expect(post).to be_valid
end
	it "is invalid without a title" do
	post = Post.new(title: nil)
	post.valid?
	expect(post.errors[:title]).to include("can't be blank")
end
	it "is invalid without a content" do
	post = Post.new(content: nil)
	post.valid?
	expect(post.errors[:content]).to include("can't be blank")
end



end	
