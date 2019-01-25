# frozen_string_literal: true

require 'English'

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new; end

  def create
    Category.create! category_params
    redirect_to categories_path
  rescue
    flash[:notice] = $ERROR_INFO
    redirect_to new_category_path
  end

  def category_params
    params.permit :name, :description
  end
end