class Post < ApplicationRecord
  validates :title, :content, presence: true

  def self.where_title_starts_with(letter)
    Appsignal.instrument('Post.where_title_starts_with', "Fetch posts that start with letter") do
      Analytics.track_post_title_search(letter.downcase)
      select('*, pg_sleep(0.01)').where("title ILIKE :letter", letter: "#{letter.downcase}%").load
    end
  end
end
