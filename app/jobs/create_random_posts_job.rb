class CreateRandomPostsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    count = (Random.rand * 10).to_i

    count.times do
      Post.create!(
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.paragraph(sentence_count: count)
      )
    end
  end
end
