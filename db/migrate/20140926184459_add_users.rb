class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone
      t.integer :conception_timestamp
      t.timestamps
    end
  end
end
