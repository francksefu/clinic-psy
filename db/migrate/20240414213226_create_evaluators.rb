class CreateEvaluators < ActiveRecord::Migration[7.1]
  def change
    create_table :evaluators do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :cpf
      t.string :email
      t.date :date_of_birth

      t.timestamps
    end
  end
end
