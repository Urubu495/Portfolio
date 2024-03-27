class CreateQuestionTrends < ActiveRecord::Migration[7.0]
  def change
    create_table :question_trends do |t|
      t.integer :trend_level, null: false

      t.timestamps
    end
  end
end
