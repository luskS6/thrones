class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :l_name

      t.timestamps
    end
  end
end
