require_dependency "phcpress/application_controller"

module Phcpress
  class Article::PostsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_article_post, only: [:edit, :update, :destroy]

    # INDEX
    def index
      @article_posts = Phcpress::Article::Post.all
    end

    # SHOW
    def show
      @article_post = Phcpress::Article::Post.friendly.find(params[:id])
      @versions = Phcpress::PostVersions.where(item_id: params[:id], item_type: 'Phcpress::Article::Post')
    end

    # NEW
    def new
      @article_post = Phcpress::Article::Post.new
    end

    # EDIT
    def edit
    end

    # CREATE
    def create
      @article_post = Phcpress::Article::Post.new(article_post_params)
      @article_post.user_id = current_user.id
      if @article_post.save
        redirect_to article_posts_url, :flash => { :success => 'Post was successfully created.' }
      else
        render :new
      end
    end

    # UPDATE
    def update
      if @article_post.update(article_post_params)
        redirect_to article_posts_url, :flash => { :success => 'Post was successfully updated.' }
      else
        render :edit
      end
    end

    # DELETE
    def destroy
      @article_post.destroy
      redirect_to article_posts_url, :flash => { :error => 'Post was successfully destroyed.' }
    end

    private

    # Common Callbacks
    def set_article_post
      @article_post = Phcpress::Article::Post.find(params[:id])
    end

    # Whitelist
    def article_post_params
      params.require(:article_post).permit(:post_title, :post_text, :post_status, :post_image, :remove_post_image, :slug, :user_id, category_ids: [])
    end

  end
end
