# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  answer_text :text
#  question_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class AnswerChoice < ApplicationRecord
  belongs_to :question

  has_many :responses, dependent: :destroy
end
