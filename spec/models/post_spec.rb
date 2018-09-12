require 'rails_helper'
describe Post, type: :model do
  subject(:post){Post.new}

  it "should be created with 'published' status by default" do
      expect(post).to have_attributes(status: 'published')
  end
end
