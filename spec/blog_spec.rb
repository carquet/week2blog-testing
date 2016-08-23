require_relative '../lib/blog.rb'
require_relative '../lib/post.rb'

RSpec.describe "Blog test" do
	it"check whether there is no post at initializing a blog" do
		my_blog=Blog.new
		expect(my_blog.container.length).to eq(0)
	end

	it "checks if there is a post after adding it" do
		my_blog = Blog.new
		post1 = Post.new("Post title 1", Time.local(2000,01,20), "hello hello hello")
		my_blog.add_post(post1)
		expect(my_blog.container.length).to eq(1)
	end

	it "prints the newest post on screen" do
		my_blog = Blog.new
		post1 = Post.new("Post title 1", Time.local(2001,02,20), "Goodbye, goodbye")
		post2 = Post.new("Post title 2", Time.local(2000,01,21), "Bonjour bonjour")
		my_blog.add_post(post1)
		my_blog.add_post(post2)
		expect(my_blog.publish_front_page).to eq([post2,post1])
	end
end