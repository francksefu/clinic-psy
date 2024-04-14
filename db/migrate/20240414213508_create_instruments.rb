class CreateInstruments < ActiveRecord::Migration[7.1]
  def change
    create_table :instruments do |t|
      t.text :question_one
      t.text :question_two
      t.text :question_tree
      t.text :question_four
      t.text :question_five

      t.timestamps
    end
  end
end
