require "sinatra"
require 'sinatra/reloader' if development?
require_relative "lib/blog.rb"
require_relative "lib/post.rb"