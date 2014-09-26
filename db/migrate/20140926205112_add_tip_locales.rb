class AddTipLocales < ActiveRecord::Migration
  def change
    create_table :tip_locales do |t|
      t.belongs_to :tip
      t.integer :locale_id
      t.string :what
    end
  end
end
