class AddUserIdToTodos < ActiveRecord::Migration[5.1]
  def change   #table name, column name, type of field
    add_column :todos, :user_id, :integer
  end
end
