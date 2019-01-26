# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new; end

  def create
    Category.create! filter(params)
    redirect_to categories_path
  rescue
    flash[:notice] = $ERROR_INFO
    redirect_to new_category_path
  end

  def show
    @category = Category.find params[:id]
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    category = Category.find params[:id]
    begin
      category.update! filter(params[:category])
      redirect_to category_path(category)
    rescue
      flash[:notice] = $ERROR_INFO
      redirect_to edit_category_path(category)
    end
  end

  def destroy
    category = Category.find params[:id]
    begin
      category.destroy!
      redirect_to categories_path
    rescue
      flash[:notice] = $ERROR_INFO
      redirect_to category
    end
  end

  private

  def filter(params)
    params.permit Category::PROPERTIES
  end
end