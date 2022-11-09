class AddIndexToContracts < ActiveRecord::Migration[7.0]
  def change
    add_index :contracts, [:book_id, :publisher_id], unique: true
  end
end
