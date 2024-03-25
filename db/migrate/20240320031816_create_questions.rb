class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.references :category, null: false, foreign_key: true
      t.references :question_trend, null: false, foreign_key: true
      t.references :year, null: false, foreign_key: true
      t.text :content,  null: false

      t.timestamps
    end
  end
end
