class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :scaffold
      t.string :name
      t.date :borrowed_date

      t.timestamps
    end
  end
end
