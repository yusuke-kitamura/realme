class AddImageIdToSalons < ActiveRecord::Migration[5.2]
  def change
    add_column :salons, :image_id, :string
  end
end
