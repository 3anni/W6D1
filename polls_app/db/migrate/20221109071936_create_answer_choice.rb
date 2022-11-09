class CreateAnswerChoice < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_choices do |t|
      t.text :answer_text
      t.bigint :question_id, null: false, index: true

      t.timestamps
    end
    add_foreign_key :answer_choices, :questions, column: :question_id
  end
end
