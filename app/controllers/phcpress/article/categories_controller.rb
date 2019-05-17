require_dependency "phcpress/application_controller"

module Phcpress
  class Article::CategoriesController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_article_category, only: [:edit, :update, :destroy]

    # INDEX
    def index
      @article_categories = Phcpress::Article::Category.all
    end

    # SHOW
    def show
      @article_category = Phcpress::Article::Category.friendly.find(params[:id])
      @versions = Phcpress::CategoryVersions.where(item_id: params[:id], item_type: 'Phcpress::Article::Category')
    end

    # NEW
    def new
      @article_category = Phcpress::Article::Category.new
    end

    # EDIT
    def edit
    end

    # CREATE
    def create
      @article_category = Phcpress::Article::Category.new(article_category_params)
      @article_category.user_id = current_user.id
      if @article_category.save
        redirect_to article_categories_url, :flash => { :success => 'Category was successfully created.' }
      else
        render :new
      end
    end

    # UPDATE
    def update
      if @article_category.update(article_category_params)
        redirect_to article_categories_url, :flash => { :success => 'Category was successfully updated.' }
      else
        render :edit
      end
    end

    # DELETE
    def destroy
      @article_category.destroy
      redirect_to article_categories_url, :flash => { :success => 'Category was successfully destroyed.' }
    end

    private

    # Common Callbacks
    def set_article_category
      @article_category = Phcpress::Article::Category.find(params[:id])
    end

    # Whitelist
    def article_category_params
      params.require(:article_category).permit(:category_name, :slug, :user_id)
    end

  end
end
