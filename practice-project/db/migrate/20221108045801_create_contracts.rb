class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.bigint :author_id
      t.bigint :book_id
      t.bigint :publisher_id

      t.timestamps
    end
  end
end
3
