class TopController < ApplicationController
  respond_to :html

  def index
    @characters = Character.scoped
      .where(:name_contains => @q.name)
      .where(:name_roma_contains => @q.name_roma)
      .order(@q.sorts :id, :name, :name_roma)
      .page(params[:page])
      .per(params[:per_page])

    respond_with @characters
  end
end
