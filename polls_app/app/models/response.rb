# == Schema Information
#
# Table name: responses
#
#  id          :bigint           not null, primary key
#  question_id :bigint           not null
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Response < ApplicationRecord
  belongs_to :question
  belongs_to :answer_choice

end
