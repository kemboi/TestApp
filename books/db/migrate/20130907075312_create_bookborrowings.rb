class CreateBookborrowings < ActiveRecord::Migration
  def change
    create_table :bookborrowings do |t|
      t.string :name
      t.string :
      t.string :title
      t.string :
      t.string :author
      t.text :
      t.string :date_publish
      t.date :

      t.timestamps
    end
  end
end
