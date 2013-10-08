class CreateVitabus < ActiveRecord::Migration
  def change
    create_table :vitabus do |t|
      t.string :Name
      t.string :title
      t.date :dateborrowed

      t.timestamps
    end
  end
end
