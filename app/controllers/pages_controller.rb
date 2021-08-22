class PagesController < ApplicationController
  def home
    CreateRandomPostsJob.perform_later

    # Randomly force an error by creating an empty Post
    if SecureRandom.rand * 100 > 85
      Post.create!
    end
  end
end
