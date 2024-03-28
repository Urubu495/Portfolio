class CreateSessionQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :session_questions do |t|
      t.references :session, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.boolean :is_answered, null: false, default: false
      t.boolean :is_correct, null: true

      t.timestamps
    end
  end
end
