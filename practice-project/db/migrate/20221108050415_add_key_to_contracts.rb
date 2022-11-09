class AddKeyToContracts < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :contracts, :authors, column: :author_id
    add_foreign_key :contracts, :books, column: :book_id
    add_foreign_key :contracts, :publishers, column: :publisher_id
  end
end
