class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def something
    @teste = params[:teste]
    @another = params[:another_one]
  end
end
