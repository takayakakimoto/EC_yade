class CreatePurchaseRecordProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_record_products do |t|
      t.references :product, index: true, null: false, foreign_key: true
      t.references :purchase_record, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
