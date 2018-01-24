class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      #add two column with their field types
      t.string :name
      t.text :description
    end
  end
end
