# Load General Controller for Engine
require_dependency "phcpress/application_controller"

# Code for News Posting
module Phcpress
	class News::PostsController < ApplicationController

		# Filters & Security
		layout 'layouts/phcpress/newspost/news_layout'
		before_filter :current_account
		before_action :authenticate_user!
		before_action :set_news_post, only: [:edit, :update, :destroy]

		# News Post Index (/news/posts)
		def index
			@news_posts = News::Post.all
		end

		# Single News Post (/news/posts/1)
		#def show
		#end

		# Create a New News Post (/news/posts/new)
		def new
			@news_post = News::Post.scoped_to(current_account).new
		end

		# Edit News Post /news/posts/1/edit
		def edit
		end

		# POST
		def create
			@news_post = News::Post.current_user.(news_post_params)

			if @news_post.save
				redirect_to news_posts_path, notice: 'News post was successfully created.'
			else
				render :new
			end
		end

		# PATCH/PUT
		def update
			if @news_post.update(news_post_params)
				redirect_to news_posts_path, notice: 'News post was successfully updated.'
			else
				render :edit
			end
		end

		# DELETE
		def destroy
			@news_post.destroy
			redirect_to news_posts_path, notice: 'News post was successfully destroyed.'
		end

		private
		
		def current_account
			if user_signed_in?
				current_user
			end
		end
		helper_method :current_account

		# Common Callbacks
		def set_news_post
			@news_post = News::Post.find(params[:id])
		end

		# Whitelist on what can be posted
		def news_post_params
			params.require(:news_post).permit(:newspsttitle, :newspsttext, :newspstexcerpts, :pststatus, :pstimage)
		end

	end
end
