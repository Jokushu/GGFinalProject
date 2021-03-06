class CreateJoinTableMenusOrders < ActiveRecord::Migration[7.0]
  def change
    create_join_table :menus, :orders do |t|
      t.index [:menu_id, :order_id]
      t.index [:order_id, :menu_id]
    end
  end
end
