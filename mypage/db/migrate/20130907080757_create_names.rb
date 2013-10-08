class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.date :dateofmanuf

      t.timestamps
    end
  end
end
