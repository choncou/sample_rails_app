class PagesController < ApplicationController
  def home
    CreateRandomPostsJob.perform_later
  end
end
