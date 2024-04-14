class CreateEvaluateds < ActiveRecord::Migration[7.1]
  def change
    create_table :evaluateds do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.date :date_of_birth

      t.timestamps
    end
  end
end
