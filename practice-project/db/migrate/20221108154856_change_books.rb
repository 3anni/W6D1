class ChangeBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :author, index: true, foreign_key: true
  end

  # add_foreign_key :books, :authors, :author_id
end
