# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  title      :string
#  author_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Poll < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :author_id

  has_many :questions, dependent: :destroy

end
