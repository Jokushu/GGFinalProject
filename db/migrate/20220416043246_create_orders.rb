class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :email
      t.integer :status
      t.float :total

      t.timestamps
    end
  end
end
