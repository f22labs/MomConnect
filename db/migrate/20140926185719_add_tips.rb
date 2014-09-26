class AddTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :what
      t.integer :when
    end 
  end
end
