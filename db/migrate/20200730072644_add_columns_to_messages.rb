class AddColumnsToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :user_id, :string
    add_column :messages, :salon_id, :string
  end
end
