class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :parent_id, null: true, foreign_key: {to_table: :categories}
      t.integer :level, null: false

      t.timestamps

      t.index :parent_id
    end
  end
end