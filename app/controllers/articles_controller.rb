class ArticlesController < ApplicationController

  @articles = Article.all.includes(:user)
  @articles = Article.authored_by(params[:author]) if params [:author].present?
  @articles = Article.favorited_by(params[:favorited]) if params[:favorited].present?
 end
