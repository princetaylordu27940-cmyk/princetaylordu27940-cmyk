class PagesController < ApplicationController
  def home
  end

  def notes
    @notes = Post.all
  end

  def favoris
    @favoris = Post.where(liked:true)
  end
end
