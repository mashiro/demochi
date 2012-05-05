class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :build_search_query!
end
