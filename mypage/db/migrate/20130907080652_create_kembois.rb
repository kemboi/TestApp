class CreateKembois < ActiveRecord::Migration
  def change
    create_table :kembois do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
