class Post < ApplicationRecord
  enum status: {published: 'published', scheduled: 'scheduled'} 
  def after_initialize
    self.status = :published
  end
end
