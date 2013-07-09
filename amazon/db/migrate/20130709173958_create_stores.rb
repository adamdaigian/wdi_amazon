class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :contact

      t.timestamps
    end
  end
end
