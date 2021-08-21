class PagesController < ApplicationController
  def home
    RandomLongRunningJob.perform_later
  end
end
