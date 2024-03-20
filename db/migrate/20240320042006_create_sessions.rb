class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :status, null: false, default: 0
      t.datetime :started_at, null: false

      t.timestamps
    end
  end
end
