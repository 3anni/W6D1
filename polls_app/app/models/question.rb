# == Schema Information
#
# Table name: questions
#
#  id            :bigint           not null, primary key
#  question_text :text
#  poll_id       :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Question < ApplicationRecord
  belongs_to :poll

  has_many :answer_choices, dependent: :destroy

end
