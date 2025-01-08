class ArchiveAllPostsJob < ApplicationJob
  queue_as :default

  def perform
    Post.active.update_all(status: Post.statuses[:archived])
  end
end
