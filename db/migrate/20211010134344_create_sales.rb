class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.datetime :fecha
      t.references :account, null: false, foreign_key: true
      t.integer :precio_venta
      t.integer :monto_cliente
      t.integer :ganancia
      t.boolean :vendido
      t.boolean :pagado

      t.timestamps
    end
  end
end
