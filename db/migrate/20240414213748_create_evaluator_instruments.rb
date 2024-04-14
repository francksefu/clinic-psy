class CreateEvaluatorInstruments < ActiveRecord::Migration[7.1]
  def change
    create_table :evaluator_instruments do |t|
      t.references :evaluator, null: false, foreign_key: true
      t.references :instrument, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
