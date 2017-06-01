# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  screen_name :string
#  avatar      :string
#  online      :boolean          default("false")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ApplicationRecord
  has_many :messages

  def last_message
    messages.order('created_at DESC').first
  end
end
