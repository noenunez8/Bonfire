class AddDescriptionToSales < ActiveRecord::Migration[6.1]
  def change
    add_column :sales, :description, :string
  end
end
