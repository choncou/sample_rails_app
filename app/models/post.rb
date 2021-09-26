class Post < ApplicationRecord
  validates :title, :content, presence: true

  def self.where_title_starts_with(letter)
    Analytics.track_post_title_search(letter.downcase)
    select('*, pg_sleep(0.01)').where("title ILIKE :letter", letter: "#{letter.downcase}%")
  end
end
