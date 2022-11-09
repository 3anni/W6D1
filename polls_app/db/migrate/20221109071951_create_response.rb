class CreateResponse < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.bigint :question_id, null: false, index: true
      t.bigint :user_id, null: false, index: true

      t.timestamps
    end
    add_foreign_key :responses, :questions, column: :question_id
    add_foreign_key :responses, :users, column: :user_id
  end
end
