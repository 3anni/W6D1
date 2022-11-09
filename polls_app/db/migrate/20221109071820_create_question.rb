class CreateQuestion < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :question_text
      t.bigint :poll_id, null: false, index: true


      t.timestamps
    end

    add_foreign_key( :questions, :polls, column: :poll_id )
  end
end
