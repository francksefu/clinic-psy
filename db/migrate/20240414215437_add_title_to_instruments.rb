class AddTitleToInstruments < ActiveRecord::Migration[7.1]
  def change
    add_column :instruments, :title, :string
  end
end
