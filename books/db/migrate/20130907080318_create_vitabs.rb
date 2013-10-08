class CreateVitabs < ActiveRecord::Migration
  def change
    create_table :vitabs do |t|
      t.string :Name
      t.string :
      t.string :title
      t.string :
      t.string :dateborrowed
      t.date :

      t.timestamps
    end
  end
end
