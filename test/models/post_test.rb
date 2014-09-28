# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  slug         :string(255)
#  title        :string(255)
#  body         :text
#  tags         :string(255)      default([]), is an Array
#  published_at :datetime
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
